using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.OptimalPlanner
{
    class OptimalDependenciesPlanner
    {
        public List<string> Plan(List<Agent> m_agents)
        {
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
            PddlBuilderForOptimalDependenciesPlanning pddlBuilder = new PddlBuilderForOptimalDependenciesPlanning();
            pddlBuilder.BuildPddlFiles(m_agents, agentsDependencies);

            Console.WriteLine("Sending the pddl files to the external planners");
            bool ans;
            ExternalPlanners externalPlanners = new ExternalPlanners();
            List<string> plan = externalPlanners.Plan(false, true, pddlBuilder.GetJoinedDomain(), pddlBuilder.GetJoinedProblem(), pddlBuilder.GetJoinedStartState(), null, null, 10 * 60000, out ans);

            Console.WriteLine("Finished planning");
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
