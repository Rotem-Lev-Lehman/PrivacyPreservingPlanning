using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    abstract class AAdvancedProjectionDependenciesSelector
    {
        private AdvancedProjectionDependeciesPublisher publisher;
        private Dictionary<Predicate, List<Action>> ActionsAffected;

        public void StartSelectingDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, int amountToPublish, Agent agent)
        {
            InitializeDict(possibleActions, agent);
            SelectDependencies(possibleActions, effectsWeCanReveal, amountToPublish, agent);
        }

        private void InitializeDict(List<Action> possibleActions, Agent agent)
        {
            ActionsAffected = new Dictionary<Predicate, List<Action>>();
            List<Predicate> privateEffects = new List<Predicate>(agent.ArtificialToPrivate.Keys);
            foreach (Predicate p in privateEffects)
            {
                //add p to the dictionaries, start it there with a new hashset:
                ActionsAffected.Add(p, new List<Action>());
                Predicate negation = p.Negate();
                ActionsAffected.Add(negation, new List<Action>());
            }

            foreach (Action action in possibleActions)
            {
                foreach (Predicate precondition in action.HashPrecondition)
                {
                    if (precondition.Name.Contains(Domain.ARTIFICIAL_PREDICATE)) //private precondition
                    {
                        //Add this link to the dictionary:
                        ActionsAffected[precondition].Add(action);
                        /*
                        if (precondition.Negation)
                        {
                            throw new Exception("Publishing a negation predicate");
                        }
                        */
                    }
                }
            }
            AdvancedLandmarkProjectionPlaner.actionsAffectedForAgent.Add(agent, ActionsAffected);
        }

        protected abstract void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, int amountToPublish, Agent agent);

        public void SetPublisher(AdvancedProjectionDependeciesPublisher publisher)
        {
            this.publisher = publisher;
        }

        protected void RecordSelection(Agent agent, Tuple<Action, Predicate> chosen)
        {
            publisher.RecordDependencyPicked(agent, chosen);
            EnterDependenciesToTrace(agent, chosen);
        }

        protected void EnterDependenciesToTrace(Agent agent, Tuple<Action, Predicate> chosen)
        {
            publisher.EnterDependenciesToTrace(agent, chosen, ActionsAffected[chosen.Item2]);
        }
    }
}
