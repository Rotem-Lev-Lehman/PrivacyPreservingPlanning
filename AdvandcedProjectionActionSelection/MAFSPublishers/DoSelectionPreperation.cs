using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    class DoSelectionPreperation : IDependenciesSelectionPreperation
    {
        /*
         * Use this class in order to limit the publishing of states that reveal a certain dependency that shouldn't be revealed.
         * This class shall pick which dependencies should we reveal and which should we not reveal.
         */
        public void PrepareSelection(AAdvancedProjectionActionPublisher publisher, List<MapsAgent> mafsAgents, List<Agent> agents, AHandleTraces tracesHandler)
        {
            //TODO: handle traces later...

            List<Action> allProjectionAction = new List<Action>();
            List<Predicate> predicates = new List<Predicate>();
            int index = 0;
            Dictionary<Agent, List<Action>> agentsProjections = new Dictionary<Agent, List<Action>>();
            foreach (Agent agent in agents)
            {
                //this returns all of the projections, we will need to take only some of them and look at how does it affect the solution
                List<Action> currentlProjAction = agent.getAdvancedProjectionPublicAction(index, predicates);
                agentsProjections.Add(agent, currentlProjAction);

                foreach (Action act in currentlProjAction)
                {
                    act.agent = agent.name;
                }
                index += 1000;
            }

            LeakageTrace.setAgents(agents);
            Dictionary<Agent, LeakageTrace> traces = new Dictionary<Agent, LeakageTrace>();
            List<Action> publicActionsForTraces = new List<Action>();
            foreach (Agent agent in agents)
            {
                LeakageTrace trace = new LeakageTrace(agent);
                traces.Add(agent, trace);
                publicActionsForTraces.AddRange(agentsProjections[agent]);
            }
            AdvancedLandmarkProjectionPlaner.firstTimeWritenStates = new Dictionary<Agent, bool>();
            foreach (Agent agent in agents)
            {
                traces[agent].initializeOperators(publicActionsForTraces, agent.privateActions);
                AdvancedLandmarkProjectionPlaner.writeFirstHalfOfJsonToFile(agent, traces[agent]);
                AdvancedLandmarkProjectionPlaner.firstTimeWritenStates.Add(agent, true);
            }

            tracesHandler.setAgents(agents);
            tracesHandler.setTraces(traces);

            //clear the actions affected dictionary:
            AdvancedLandmarkProjectionPlaner.actionsAffectedForAgent = new Dictionary<Agent, Dictionary<Predicate, List<Action>>>();

            //publish all of the chosen projections, by the chosen policy:
            Console.WriteLine("Choosing which dependencies to publish");
            publisher.setAgents(agents);

            publisher.publishActions(allProjectionAction, agentsProjections);
            Dictionary<string, MapsAgent> name2mafsAgent = new Dictionary<string, MapsAgent>();
            foreach(MapsAgent mapsAgent in mafsAgents)
            {
                name2mafsAgent.Add(mapsAgent.name, mapsAgent);
            }

            Dictionary<string, Agent> name2agent = new Dictionary<string, Agent>();
            foreach (Agent agent in agents)
            {
                name2agent.Add(agent.name, agent);
                //Set start state dependencies:
                MapsAgent mapsAgent = name2mafsAgent[agent.name];
                List<Predicate> startStatePredicates = agent.GetPrivateStartState().Cast<Predicate>().ToList();
                //List<Predicate> startState = GetTransformedArtificialPredicates(agent, startStatePredicates);
                mapsAgent.SetDependenciesAtStartState(startStatePredicates);
            }

            foreach (Action action in allProjectionAction)
            {
                MapsAgent mafsAgent = name2mafsAgent[action.agent];
                Agent agent = name2agent[action.agent];
                List<Predicate> effects = GetTransformedArtificialPredicates(agent, action.HashEffects);
                mafsAgent.AddToEffectsActionsAndDependencies(action.Name, effects);
                List<Predicate> preconditions = GetTransformedArtificialPredicates(agent, action.HashPrecondition);
                mafsAgent.AddToPreconditionActionsAndDependencies(action.Name, preconditions);
            }
            MapsPlanner.allProjectionActions = allProjectionAction;
        }

        private List<Predicate> GetTransformedArtificialPredicates(Agent agent, List<Predicate> predicates)
        {
            List<Predicate> transformed = new List<Predicate>();
            foreach (Predicate p in predicates)
            {
                if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                {
                    //It is an artificial predicate
                    Predicate t = TransformPredicateToNonArtificial(agent, p);
                    transformed.Add(t);
                }
            }
            return transformed;
        }

        private Predicate TransformPredicateToNonArtificial(Agent agent, Predicate artificial)
        {
            Predicate predicate = artificial;
            bool negation = false;
            if (artificial.Negation)
            {
                //if it is a "not Predicate"
                predicate = artificial.Negate();
                negation = true;
            }

            Predicate nonArtificial = agent.ArtificialToPrivate[(GroundedPredicate)predicate];

            Predicate p = nonArtificial;
            if (negation)
            {
                p = nonArtificial.Negate();
            }

            return p;
        }
    }
}
