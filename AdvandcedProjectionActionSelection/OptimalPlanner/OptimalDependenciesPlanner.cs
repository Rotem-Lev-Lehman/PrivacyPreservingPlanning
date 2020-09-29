using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.OptimalPlanner
{
    class OptimalDependenciesPlanner
    {
        public static bool version1 = false;

        public List<string> Plan(List<Agent> m_agents)
        {
            Program.optimalAmountOfDependenciesForCurrentProblem = -1;
            Program.planForOptimalAmountOfDependenciesForCurrentProblem = null;

            Console.WriteLine("Starting optimal dependencies planning");

            Console.WriteLine("Finding all dependencies");
            Dictionary<Agent, List<Dependency>> agentsDependencies = new Dictionary<Agent, List<Dependency>>();
            List<Predicate> predicates = new List<Predicate>();
            int index = 0;
            foreach (Agent agent in m_agents)
            {
                List<Action> currentlProjAction = agent.getAdvancedProjectionPublicAction(index, predicates);
                List<Dependency> dependencies = GetAgentDependencies(agent, currentlProjAction);
                agentsDependencies[agent] = dependencies;

                index += 1000;
            }

            Console.WriteLine("Building pddl files for joined problem");
            List<string> plan;
            if (version1)
            {
                plan = RunVersion1PddlBuilder(m_agents, agentsDependencies);
            }
            else
            {
                plan = RunVersion2PddlBuilder(m_agents, agentsDependencies);
            }
            
            Console.WriteLine("Finished planning");
            return plan;
        }

        private List<string> RunVersion2PddlBuilder(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies)
        {
            PddlBuilderForOptimalDependenciesPlanningVer2 pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer2();
            pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies);

            Console.WriteLine("Solving without limitation to establish the maximum amount of dependencies we can publish");
            List<string> plan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState());
            if(plan == null)
            {
                Console.WriteLine("Could not solve even without limitation. This is a hard problem.");
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
                pddlBuilder = new PddlBuilderForOptimalDependenciesPlanningVer2();
                pddlBuilder.UpdateMaxDependenciesRevealed(i);
                pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies);

                Console.WriteLine("Sending the pddl files to the external planners");
                List<string> tmpPlan = SendToExternalPlanners(pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState());
                if(tmpPlan != null)
                {
                    plan = tmpPlan;
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
            List<string> plan = externalPlanners.Plan(false, true, domain, problem, startState, null, null, 10 * 60000, out ans);
            return plan;
        }

        private List<Dependency> GetAgentDependencies(Agent agent, List<Action> possibleActions)
        {
            List<Dependency> dependencies = new List<Dependency>();
            foreach (Action action in possibleActions)
            {
                Action realAction = GetRealAction(agent, action);
                foreach (Predicate p in action.HashEffects)
                {
                    if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //it is an artificial predicate, which means that it is a dependency...

                        Predicate regularP = GetRegularPredicate(agent, p);
                        dependencies.Add(new Dependency(realAction, regularP));
                    }
                }
            }

            return dependencies;
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
