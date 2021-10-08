using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace Planning.AdvandcedProjectionActionSelection.OptimalPlanner
{
    class OptimalDependenciesPlanner
    {
        public bool usingFF;
        public bool usingFD;
        public bool usingSymPA; // using SymPA to prove unsolvability
        public bool version1 = false;
        public bool version2Or3 = false; //if version1 is False, than we will check this. This will choose from version2/3 To version4
        //As seems now, we should prefer using version3...

        //public static string startStateDummyActionName = "start-state-dummy-action";
        //public static List<Dependency> startStateDependencies;

        private readonly object boundsLock = new object();
        private string tempSymPAPDDLFolder;
        private bool upperFoundOptimal;
        private bool lowerFoundOptimal;

        public List<string> Plan(List<Agent> m_agents)
        {
            Program.isValidUp2DownPlan = true;
            Program.optimalAmountOfDependenciesForCurrentProblem = -1;
            Program.planForOptimalAmountOfDependenciesForCurrentProblem = null;
            if(Program.typeOfSelector == "FF_and_SymPA")
            {
                usingSymPA = true;
                usingFF = true;
                usingFD = false;
            }
            if(Program.typeOfSelector == "FF_and_FD")
            {
                usingSymPA = false;
                usingFF = true;
                usingFD = true;
            }
            else if(Program.typeOfSelector == "FD")
            {
                usingSymPA = false;
                usingFF = false;
                usingFD = true;
            }
            else //Program.typeOfSelector == "FF"
            {
                usingSymPA = false;
                usingFF = true;
                usingFD = false;
            }

            Console.WriteLine("Starting optimal dependencies planning");

            Console.WriteLine("Finding all dependencies");
            Dictionary<Agent, List<Dependency>> agentsDependencies = new Dictionary<Agent, List<Dependency>>();
            Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary = new Dictionary<Agent, Dictionary<Predicate, List<Dependency>>>();
            Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect = new Dictionary<Agent, Dictionary<Action, List<Dependency>>>();
            List<Predicate> predicates = new List<Predicate>();
            int index = 0;

            //startStateDependencies = new List<Dependency>();

            foreach (Agent agent in m_agents)
            {
                //Action startStateAgentAction = initializeStartStateAction(agent);
                //agent.m_actions.Add(startStateAgentAction);
                //agent.publicActions.Add(startStateAgentAction);

                List<Action> currentlProjAction = agent.getAdvancedProjectionPublicAction(index, predicates);

                Tuple<List<Dependency>, Dictionary<Predicate, List<Dependency>>, Dictionary<Action, List<Dependency>>> tuple = GetAgentDependencies(agent, currentlProjAction);

                List<Dependency> dependencies = tuple.Item1;
                Dictionary<Predicate, List<Dependency>> predicate2DependenciesThatAcomplishIt = tuple.Item2;
                Dictionary<Action, List<Dependency>> action2DependenciesInItsEffects = tuple.Item3;

                agentsDependencies[agent] = dependencies;
                agentsPreconditionDictionary[agent] = predicate2DependenciesThatAcomplishIt;
                agentsActions2DependenciesInEffect[agent] = action2DependenciesInItsEffects;

                index += 1000;
            }

            Console.WriteLine("Building pddl files for joined problem");
            List<string> plan;
            if (version1)
            {
                plan = RunVersion1PddlBuilder(m_agents, agentsDependencies);
            }
            else if(version2Or3)
            {
                plan = RunVersion2Or3PddlBuilder(m_agents, agentsDependencies);
            }
            else if(!usingSymPA)
            {
                plan = RunVersion4Or5PddlBuilder(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);
            }
            else
            {
                plan = RunVersion4Or5PddlBuilderUsingThreads(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);
            }
            
            Console.WriteLine("Finished planning");
            return plan;
        }

        /*
        private Action initializeStartStateAction(Agent agent)
        {
            Action startStateAgentAction = new Action(startStateDummyActionName);
            startStateAgentAction.agent = agent.name;
            startStateAgentAction.isPublic = true;
            CompoundFormula preconditions = new CompoundFormula("and");
            CompoundFormula effects = new CompoundFormula("and");

            foreach (Predicate p in agent.GetPrivateStartState())
            {
                effects.AddOperand(p);
            }
            startStateAgentAction.SetEffects(effects);
            startStateAgentAction.Preconditions = preconditions;
            startStateAgentAction.LoadPrecondition();

            return startStateAgentAction;
        }
        */
        /*
        private void RunVersion4MainLoop(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect, CancellationToken token, bool up2down, string SymPAFilename)
        {
            PddlBuilderForOptimalDependenciesPlanningVer4 pddlBuilder;
            
            string up2downStr;
            if (up2down)
            {
                up2downStr = "up-->down";
            }
            else
            {
                up2downStr = "down-->up";
            }
            int currDepNum;
            List<string> plan;
            while(NeedToContinueMainLoop(up2down))
            {
                currDepNum = GetCurrDepNum(up2down);
                Console.WriteLine("Trying to publish maximum " + currDepNum + " dependencies for each agent, in the " + up2downStr + " task");
                pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer4();
                pddlBuilder.UpdateMaxDependenciesRevealed(currDepNum);
                pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

                Console.WriteLine("Sending the pddl files to the external planners");
                List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), SymPAFilename);
                
                CheckPlan(tmpPlan, up2down);
            }
        }

        private void CheckPlan(List<string> tmpPlan, bool up2down)
        {
            if (tmpPlan != null && !PlanIsValid(tmpPlan))
                return;

            if(up2down ^ (tmpPlan == null)) // ^ is XOR
            {
                // if they are different, then we did not find the optimal value yet, so continue updating the bound.
                UpdateBound(tmpPlan, up2down);
            }
            else
            {
                // if they are the same, then we found the optimal value.
                FoundOptimal(up2down);
            }
            if (tmpPlan != null)
            {
                plan = tmpPlan;
                
                
            }
            else
            {
                Console.WriteLine("The amount of dependencies needed for this problem can not be reduced to " + i + ", which means that " + (i + 1) + " is the optimal amount of dependencies needed for this problem");
                break;
            }
        }

        private bool PlanIsValid(List<string> plan, bool up2down)
        {
            if (VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
            {
                return true;
            }
            else
            {
                if (up2down)
                    Program.isValidUp2DownPlan = false;
                else
                    Program.isValidDown2UpPlan = false;
                return false;
            }
        }

        private void UpdateBound(List<string> plan, bool up2down)
        {
            int currBound = GetBound(up2down);
            int newBound = CalculateAmountOfDependenciesForPlan(plan);
            if(up2down ^ (newBound < currBound))
            if (newBound < currBound)
            {
                currDepNum = currAmountOfDependencies; //This can happen if suddenly we see that we need even less dependencies to solve...
            }
            else if (currAmountOfDependencies > currDepNum)
            {
                throw new Exception("Something is wrong here, we can not be using more dependencies than allowed!");
            }
            UpdateBound(true, amountOfDependencies, plan);
            Program.optimalAmountOfDependenciesForCurrentProblem = i;
            Program.planForOptimalAmountOfDependenciesForCurrentProblem = plan;
            Console.WriteLine("The amount of dependencies needed for this problem can be reduces to " + i);

            if (up2down)
            {
                SetUpperBound(newBound);
            }
            else
            {
                SetLowerBound(newBound);
            }

            UpdatePlan(plan, up2down);
        }

        private void UpdatePlan(List<string> plan, bool up2down)
        {
            if (up2down)
            {
                if(plan != null)
                {
                    SetNewPlan();
                }
            }
        }

        private void SetLowerBound(int newLowerBound)
        {
            lock (boundsLock)
            {
                Program.currentLowerBoundForOptimalDep = newLowerBound;
            }
        }

        private void SetUpperBound(int newUpperBound)
        {
            lock (boundsLock)
            {
                Program.currentUpperBoundForOptimalDep = newUpperBound;
            }
        }

        private void RunVersion4Up2Down1(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect, CancellationToken token)
        {
            PddlBuilderForOptimalDependenciesPlanningVer4 pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer4();
            pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

            Console.WriteLine("Solving without limitation to establish the maximum amount of dependencies we can publish");
            List<string> plan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), Program.SymPAFilename1, default(CancellationToken));

            if (plan == null)
            {
                Console.WriteLine("Could not solve even without limitation. This is a hard problem.");
                return;
            }
            if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
            {
                Program.isValidUp2DownPlan = false;
                return;
            }
            int amountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);


            UpdateBound(true, amountOfDependencies, plan);
            Program.optimalAmountOfDependenciesForCurrentProblem = amountOfDependencies;
            Program.planForOptimalAmountOfDependenciesForCurrentProblem = plan;
            Console.WriteLine("The amount of used dependencies in the plan that was made is: " + amountOfDependencies);

            if (amountOfDependencies == 0)
            {
                Console.WriteLine("0 is the minimal number of dependencies, which means that we have finished this planning process :)");
            }
            else
            {
                Console.WriteLine("Starting to loop over possible amounts of dependencies from maximum of: " + (amountOfDependencies - 1) + " to see when is it impossible to solve the problem");
            }

            RunVersion4MainLoop();

            return plan;
        }
        */

        private Tuple<int, int> GetBounds()
        {
            int lowerBound;
            int upperBound;

            lock (boundsLock)
            {
                lowerBound = Program.currentLowerBoundForOptimalDep;
                upperBound = Program.currentUpperBoundForOptimalDep;
            }

            return new Tuple<int, int>(lowerBound, upperBound);
        }

        private bool NeedToContinueMainLoop()
        {
            Tuple<int, int> bounds = GetBounds();
            int lowerBound = bounds.Item1;
            int upperBound = bounds.Item2;
            return (upperBound > lowerBound); //if upperBound == lower bound, we found the optimal amount of dependencies
        }

        private void UpdateBoundAndPlan(int currentBound, List<string> plan, bool up2down)
        {
            lock (boundsLock)
            {
                if (up2down)
                {
                    Program.currentUpperBoundForOptimalDep = currentBound;
                    Program.upperBoundPlanForOptimal = plan;
                }
                else
                {
                    Program.currentLowerBoundForOptimalDep = currentBound;
                    Program.lowerBoundPlanForOptimal = plan;
                }
            }
        }

        private List<string> RunVersion4Up2Down(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect, CancellationToken token)
        {
            List<string> plan = null;
            try
            {
                PddlBuilderForOptimalDependenciesPlanningVer4 pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer4();
                pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

                Console.WriteLine("Solving without limitation to establish the maximum amount of dependencies we can publish");
                plan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), Program.SymPAFilename1, token);
                if (plan == null)
                {
                    Console.WriteLine("Could not solve even without limitation. This is a hard problem.");
                    return null;
                }
                if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
                {
                    Program.isValidUp2DownPlan = false;
                    return null;
                }
                int amountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);

                UpdateBoundAndPlan(amountOfDependencies, plan, true);
                Console.WriteLine("The amount of used dependencies in the plan that was made is: " + amountOfDependencies);

                if (amountOfDependencies == 0)
                {
                    Console.WriteLine("0 is the minimal number of dependencies, which means that we have finished this planning process :)");
                }
                else
                {
                    Console.WriteLine("Starting to loop over possible amounts of dependencies from maximum of: " + (amountOfDependencies - 1) + " to see when is it impossible to solve the problem");
                }

                for (int i = amountOfDependencies - 1; i >= 0 && NeedToContinueMainLoop(); i--)
                {
                    token.ThrowIfCancellationRequested();

                    Console.WriteLine("Trying to publish maximum " + i + " dependencies for each agent");
                    pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer4();
                    pddlBuilder.UpdateMaxDependenciesRevealed(i);
                    pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

                    Console.WriteLine("Sending the pddl files to the external planners");
                    List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), Program.SymPAFilename1, token);
                    if (tmpPlan != null)
                    {
                        if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, tmpPlan))
                        {
                            Program.isValidUp2DownPlan = false;
                            return null;
                        }
                        plan = tmpPlan;
                        int currAmountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);
                        if (currAmountOfDependencies < i)
                        {
                            i = currAmountOfDependencies; //This can happen if suddenly we see that we need even less dependencies to solve...
                        }
                        else if (currAmountOfDependencies > i)
                        {
                            throw new Exception("Something is wrong here, we can not be using more dependencies than allowed!");
                        }
                        UpdateBoundAndPlan(i, plan, true);
                        Console.WriteLine("The amount of dependencies needed for this problem can be reduces to " + i);
                    }
                    else
                    {
                        Console.WriteLine("The amount of dependencies needed for this problem can not be reduced to " + i + ", which means that " + (i + 1) + " is the optimal amount of dependencies needed for this problem");
                        upperFoundOptimal = true;
                        break;
                    }
                }
            }
            catch (OperationCanceledException canceledEx)
            {
                Console.WriteLine("Terminating the up-->down thread");
            }
            return plan;
        }

        private List<string> RunVersion4Down2Up(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect, CancellationToken token)
        {
            PddlBuilderForOptimalDependenciesPlanningVer4 pddlBuilder;
            List<string> plan = null;
            try
            {
                UpdateBoundAndPlan(0, plan, false);

                Console.WriteLine("Starting to loop over possible amounts of dependencies from minimum of: 0 towards optimal value (down-->up) to see when is it possible to solve the problem");

                for (int i = 0; NeedToContinueMainLoop(); i++)
                {
                    token.ThrowIfCancellationRequested();

                    Console.WriteLine("Trying to publish maximum " + i + " dependencies for each agent");
                    pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer4();
                    pddlBuilder.UpdateMaxDependenciesRevealed(i);
                    pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

                    Console.WriteLine("Sending the pddl files to the external planners");
                    List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), Program.SymPAFilename2, token);
                    if (tmpPlan != null)
                    {
                        if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, tmpPlan))
                        {
                            Program.isValidDown2UpPlan = false;
                            return null;
                        }
                        plan = tmpPlan;
                        int currAmountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);
                        if (currAmountOfDependencies < i)
                        {
                            throw new Exception("Something is wrong here, we already showed that we can not solve the problem with less dependencies than " + i);
                        }
                        else if (currAmountOfDependencies > i)
                        {
                            throw new Exception("Something is wrong here, we can not be using more dependencies than allowed!");
                        }
                        UpdateBoundAndPlan(i, plan, false);
                        Console.WriteLine("The optimal amount of dependencies is " + i + " :)");
                        lowerFoundOptimal = true;
                        break;
                    }
                    else
                    {
                        UpdateBoundAndPlan(i + 1, plan, false);
                        Console.WriteLine("Cannot solve the problem with " + i + " dependencies - Lower bound can be increased to " + (i + 1));
                    }
                }
            }
            catch (OperationCanceledException canceledEx)
            {
                Console.WriteLine("Terminating the down-->up thread");
            }
            return plan;
        }

        private List<string> RunVersion4Or5PddlBuilderUsingThreads(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect)
        {
            // We shall use the ver4 pddl builder in the JAAMAS results, because we want to remove the possability to "go-solo" as MAFS used to allow, but now we do not allow it any more.
            // We will run the optimality finding task on 2 threads simuntanusly.

            CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
            CancellationToken token = cancellationTokenSource.Token;

            UpdateBoundAndPlan(int.MaxValue, null, true);
            UpdateBoundAndPlan(0, null, false);
            Program.foundOptimal = false;
            upperFoundOptimal = false;
            lowerFoundOptimal = false;

            tempSymPAPDDLFolder = Program.baseFolderName + "/OptimalTempFiles/" + Program.currentFFProcessName + "/" + DateTime.Now.Ticks;
            System.IO.Directory.CreateDirectory(tempSymPAPDDLFolder);

            Task<List<string>> up2down = new Task<List<string>>(() => RunVersion4Up2Down(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect, token), token);
            Task<List<string>> down2up = new Task<List<string>>(() => RunVersion4Down2Up(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect, token), token);

            up2down.Start();
            down2up.Start();
            Console.WriteLine("here*********************************************************************************************");

            int finishedIdx = Task.WaitAny(up2down, down2up);
            cancellationTokenSource.Cancel();
            up2down.Wait();
            down2up.Wait();
            cancellationTokenSource.Dispose();
            Program.KillPlanners();

            System.IO.Directory.Delete(tempSymPAPDDLFolder, true);

            List<string> up2downPlan = up2down.Result;
            List<string> down2upPlan = down2up.Result;

            if(down2upPlan != null || lowerFoundOptimal)
            {
                Program.optimalAmountOfDependenciesForCurrentProblem = Program.currentLowerBoundForOptimalDep;
                Program.foundOptimal = true;
                return down2upPlan;
            }
            if(Program.currentLowerBoundForOptimalDep == Program.currentUpperBoundForOptimalDep || upperFoundOptimal)
            {
                Program.optimalAmountOfDependenciesForCurrentProblem = Program.currentUpperBoundForOptimalDep;
                Program.foundOptimal = true;
            }

            return up2downPlan;
        }

        private List<string> RunVersion4Or5PddlBuilder(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect)
        {
            // We shall use the ver4 pddl builder in the ICAPS 2021 results, because we want to remove the possability to "go-solo" as MAFS used to allow, but now we do not allow it any more.
            
            //PddlBuilderForOptimalDependenciesPlanningVer5 pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer5();
            PddlBuilderForOptimalDependenciesPlanningVer4 pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer4();
            pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

            Console.WriteLine("Solving without limitation to establish the maximum amount of dependencies we can publish");
            List<string> plan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), null, default(CancellationToken));
            if (plan == null)
            {
                Console.WriteLine("Could not solve even without limitation. This is a hard problem.");
                return null;
            }
            if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
            {
                Program.isValidUp2DownPlan = false;
                return null;
            }
            int amountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);

            Program.optimalAmountOfDependenciesForCurrentProblem = amountOfDependencies;
            Program.planForOptimalAmountOfDependenciesForCurrentProblem = plan;
            Console.WriteLine("The amount of used dependencies in the plan that was made is: " + amountOfDependencies);

            if(amountOfDependencies == 0)
            {
                Console.WriteLine("0 is the minimal number of dependencies, which means that we have finished this planning process :)");
            }
            else
            {
                Console.WriteLine("Starting to loop over possible amounts of dependencies from maximum of: " + (amountOfDependencies - 1) + " to see when is it impossible to solve the problem");
            }
            for (int i = amountOfDependencies - 1; i >= 0; i--)
            {
                Console.WriteLine("Trying to publish maximum " + i + " dependencies for each agent");
                //pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer5();
                pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer4();
                pddlBuilder.UpdateMaxDependenciesRevealed(i);
                pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

                Console.WriteLine("Sending the pddl files to the external planners");
                List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), null, default(CancellationToken));
                if (tmpPlan != null)
                {
                    plan = tmpPlan;
                    if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
                    {
                        Program.isValidUp2DownPlan = false;
                        return null;
                    }
                    int currAmountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);
                    if (currAmountOfDependencies < i)
                    {
                        i = currAmountOfDependencies; //This can happen if suddenly we see that we need even less dependencies to solve...
                    }
                    else if (currAmountOfDependencies > i)
                    {
                        throw new Exception("Something is wrong here, we can not be using more dependencies than allowed!");
                    }
                    Program.optimalAmountOfDependenciesForCurrentProblem = i;
                    Program.planForOptimalAmountOfDependenciesForCurrentProblem = plan;
                    Console.WriteLine("The amount of dependencies needed for this problem can be reduces to " + i);
                }
                else
                {
                    Console.WriteLine("The amount of dependencies needed for this problem can not be reduced to " + i + ", which means that " + (i + 1) + " is the optimal amount of dependencies needed for this problem");
                    break;
                }
            }

            return plan;
        }

        private List<string> RunVersion2Or3PddlBuilder(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies)
        {
            PddlBuilderForOptimalDependenciesPlanningVer3 pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer3();
            pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies);

            Console.WriteLine("Solving without limitation to establish the maximum amount of dependencies we can publish");
            List<string> plan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), null, default(CancellationToken));
            if(plan == null)
            {
                Console.WriteLine("Could not solve even without limitation. This is a hard problem.");
                return null;
            }
            if(!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
            {
                Program.isValidUp2DownPlan = false;
                return null;
            }
            int amountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);

            Program.optimalAmountOfDependenciesForCurrentProblem = amountOfDependencies;
            Program.planForOptimalAmountOfDependenciesForCurrentProblem = plan;
            Console.WriteLine("The amount of used dependencies in the plan that was made is: " + amountOfDependencies);

            Console.WriteLine("Starting to loop over possible amounts of dependencies from maximum of: " + (amountOfDependencies - 1) + " to see when is it impossible to solve the problem");
            for(int i = amountOfDependencies - 1; i >= 0; i--)
            {
                Console.WriteLine("Trying to publish maximum " + i + " dependencies for each agent");
                pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer3();
                pddlBuilder.UpdateMaxDependenciesRevealed(i);
                pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies);

                Console.WriteLine("Sending the pddl files to the external planners");
                List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), null, default(CancellationToken));
                if(tmpPlan != null)
                {
                    plan = tmpPlan;
                    if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
                    {
                        Program.isValidUp2DownPlan = false;
                        return null;
                    }
                    int currAmountOfDependencies = CalculateAmountOfDependenciesForPlan(plan);
                    if (currAmountOfDependencies < i)
                    {
                        i = currAmountOfDependencies; //This can happen if suddenly we see that we need even less dependencies to solve...
                    }
                    else if(currAmountOfDependencies > i)
                    {
                        throw new Exception("Something is wrong here, we can not be using more dependencies than allowed!");
                    }
                    Program.optimalAmountOfDependenciesForCurrentProblem = i;
                    Program.planForOptimalAmountOfDependenciesForCurrentProblem = plan;
                    Console.WriteLine("The amount of dependencies needed for this problem can be reduces to " + i);
                }
                else
                {
                    Console.WriteLine("The amount of dependencies needed for this problem can not be reduced to " + i + ", which means that " + (i + 1) + " is the optimal amount of dependencies needed for this problem");
                    break;
                }
            }

            return plan;
        }

        private bool VerifyPlan(Domain currentJointDomain, Problem currentJointProblem, List<string> plan)
        {
            List<string> currespondentPlan = new List<string>();
            foreach(string action in plan)
            {
                if (action.Contains("reveal-dependency") || action.Contains("start-going-solo"))
                {
                    continue;
                }
                if (action.Contains("_with_dependencies"))
                {
                    string fixedAction = action.Split(new string[] { "_with_dependencies" }, StringSplitOptions.None)[0];
                    currespondentPlan.Add(fixedAction);
                }
                else
                {
                    currespondentPlan.Add(action);
                }
            }
            return Program.VerifyPlan(currentJointDomain, currentJointProblem, currespondentPlan);
        }

        private string FixAction(string action)
        {
            throw new NotImplementedException();
        }

        private int CalculateAmountOfDependenciesForPlan(List<string> plan)
        {
            int maxDepBetweenAgents = 0;
            Dictionary<string, int> amountOfUsedDepForAgent = new Dictionary<string, int>();
            foreach (string action in plan)
            {
                if (action.Contains("reveal-dependency"))
                {
                    string agent = action.Split(' ')[1];
                    if (amountOfUsedDepForAgent.ContainsKey(agent))
                    {
                        amountOfUsedDepForAgent[agent]++;
                    }
                    else
                    {
                        amountOfUsedDepForAgent[agent] = 1;
                    }
                    if (maxDepBetweenAgents < amountOfUsedDepForAgent[agent])
                    {
                        maxDepBetweenAgents = amountOfUsedDepForAgent[agent];
                    }
                }
            }
            return maxDepBetweenAgents;
        }

        private List<string> RunVersion1PddlBuilder(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies)
        {
            PddlBuilderForOptimalDependenciesPlanning pddlBuilder = new PddlBuilderForOptimalDependenciesPlanning();
            pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies);

            Console.WriteLine("Sending the pddl files to the external planners");
            return SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), null, default(CancellationToken));
        }

        private List<string> SendToExternalPlanners(Domain domain, Problem problem, State startState, string SymPAFilename, CancellationToken token)
        {
            bool ans;
            ExternalPlanners externalPlanners = new ExternalPlanners(token, tempSymPAPDDLFolder);
            //List<string> plan = externalPlanners.ManualSolve(problem, domain);
            List<string> plan = externalPlanners.Plan(usingFF, usingFD, usingSymPA, domain, problem, startState, null, null, Program.maxTimeInMinutes * 60 * 1000, out ans, SymPAFilename);
            return plan;
        }

        private Tuple<List<Dependency>, Dictionary<Predicate, List<Dependency>>, Dictionary<Action, List<Dependency>>> GetAgentDependencies(Agent agent, List<Action> possibleActions)
        {
            List<Dependency> dependencies = new List<Dependency>();
            Dictionary<Predicate, List<Dependency>> predicate2DependenciesThatAcomplishIt = new Dictionary<Predicate, List<Dependency>>();
            Dictionary<Action, List<Dependency>> action2DependenciesInItsEffects = new Dictionary<Action, List<Dependency>>();

            foreach (Action action in possibleActions)
            {
                Action realAction = GetRealAction(agent, action);
                List<Dependency> dependenciesThatThisActionAchieves = new List<Dependency>();
                foreach (Predicate p in action.HashEffects)
                {
                    if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //it is an artificial predicate, which means that it is a dependency...

                        Predicate regularP = GetRegularPredicate(agent, p);
                        Dependency dependency = new Dependency(realAction, regularP);
                        dependencies.Add(dependency);

                        if (!predicate2DependenciesThatAcomplishIt.ContainsKey(regularP))
                        {
                            predicate2DependenciesThatAcomplishIt[regularP] = new List<Dependency>();
                        }
                        predicate2DependenciesThatAcomplishIt[regularP].Add(dependency);
                        dependenciesThatThisActionAchieves.Add(dependency);

                        /*
                        if(action.Name == startStateDummyActionName)
                        {
                            startStateDependencies.Add(dependency);
                        }
                        */
                    }
                }
                action2DependenciesInItsEffects[realAction] = dependenciesThatThisActionAchieves;
            }

            Tuple<List<Dependency>, Dictionary<Predicate, List<Dependency>>, Dictionary<Action, List<Dependency>>> tuple = new Tuple<List<Dependency>, Dictionary<Predicate, List<Dependency>>, Dictionary<Action, List<Dependency>>>(dependencies, predicate2DependenciesThatAcomplishIt, action2DependenciesInItsEffects);
            return tuple;
        }

        private Action GetRealAction(Agent agent, Action action)
        {
            Action realAction = null;
            foreach (Action agentAction in agent.m_actions)
            {
                if (agentAction.Name.Equals(action.Name))
                {
                    realAction = agentAction;
                    break;
                }
            }
            if(realAction == null)
            {
                throw new Exception("Didn't find the corresponding agent's action");
            }
            return realAction;
        }

        private Predicate GetRegularPredicate(Agent agent, Predicate p)
        {
            bool isNegation = false;
            Predicate artificialP = p;
            if (artificialP.Negation)
            {
                isNegation = true;
                artificialP = artificialP.Negate();
            }
            Predicate regularP = agent.ArtificialToPrivate[(GroundedPredicate)artificialP];
            if (isNegation)
                regularP = regularP.Negate();

            return regularP;
        }
    }
}
