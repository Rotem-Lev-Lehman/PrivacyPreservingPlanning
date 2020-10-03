using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.OptimalPlanner
{
    class OptimalDependenciesPlanner
    {
        public bool usingFF;
        public bool usingFD;
        public bool version1 = false;
        public bool version2Or3 = false; //if version1 is False, than we will check this. This will choose from version2/3 To version4
        //As seems now, we should prefer using version3...

        public static string startStateDummyActionName = "start-state-dummy-action";
        public static List<Dependency> startStateDependencies;

        public List<string> Plan(List<Agent> m_agents)
        {
            Program.isValidPlan = true;
            Program.optimalAmountOfDependenciesForCurrentProblem = -1;
            Program.planForOptimalAmountOfDependenciesForCurrentProblem = null;
            if(Program.typeOfSelector == "Optimal_FF_and_FD")
            {
                usingFF = true;
                usingFD = true;
            }
            else if(Program.typeOfSelector == "Optimal_FD")
            { 
                usingFF = false;
                usingFD = true;
            }
            else //Program.typeOfSelector == "Optimal_FF"
            {
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

            startStateDependencies = new List<Dependency>();

            foreach (Agent agent in m_agents)
            {
                Action startStateAgentAction = initializeStartStateAction(agent);
                agent.m_actions.Add(startStateAgentAction);
                agent.publicActions.Add(startStateAgentAction);

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
            else
            {
                plan = RunVersion4Or5PddlBuilder(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);
            }
            
            Console.WriteLine("Finished planning");
            return plan;
        }

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

        private List<string> RunVersion4Or5PddlBuilder(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect)
        {
            PddlBuilderForOptimalDependenciesPlanningVer5 pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer5();
            pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

            Console.WriteLine("Solving without limitation to establish the maximum amount of dependencies we can publish");
            List<string> plan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState());
            if (plan == null)
            {
                Console.WriteLine("Could not solve even without limitation. This is a hard problem.");
                return null;
            }
            if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
            {
                Program.isValidPlan = false;
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
                pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer5();
                pddlBuilder.UpdateMaxDependenciesRevealed(i);
                pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);

                Console.WriteLine("Sending the pddl files to the external planners");
                List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState());
                if (tmpPlan != null)
                {
                    plan = tmpPlan;
                    if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
                    {
                        Program.isValidPlan = false;
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
            List<string> plan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState());
            if(plan == null)
            {
                Console.WriteLine("Could not solve even without limitation. This is a hard problem.");
                return null;
            }
            if(!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
            {
                Program.isValidPlan = false;
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
                List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState());
                if(tmpPlan != null)
                {
                    plan = tmpPlan;
                    if (!VerifyPlan(Program.currentJointDomain, Program.currentJointProblem, plan))
                    {
                        Program.isValidPlan = false;
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
            return SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState());
        }

        private List<string> SendToExternalPlanners(Domain domain, Problem problem, State startState)
        {
            bool ans;
            ExternalPlanners externalPlanners = new ExternalPlanners();
            //List<string> plan = externalPlanners.ManualSolve(problem, domain);
            List<string> plan = externalPlanners.Plan(usingFF, usingFD, domain, problem, startState, null, null, Program.maxTimeInMinutes * 60 * 1000, out ans);
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

                        if(action.Name == startStateDummyActionName)
                        {
                            startStateDependencies.Add(dependency);
                        }
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
