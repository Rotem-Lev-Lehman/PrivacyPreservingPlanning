using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionCollaborationAchievableDiversityActionSelector : IAdvancedProjectionCollaborativeActionsSelector
    {
        private Random rnd;

        public AdvancedProjectionCollaborationAchievableDiversityActionSelector()
        {
            this.rnd = new Random();
        }
        public Action selectNextAction(Dictionary<Action, List<Predicate>> possibleActions_effects, Dictionary<Action, List<Predicate>> possibleActions_preconditions, List<Action> alreadyChosenActions, Agent agent)
        {
            //check if it is a legal operation
            if (possibleActions_effects.Count == 0)
            {
                throw new NotSupportedException("There must be at least 1 action to select from");
            }

            //init dictionary:
            foreach (List<Predicate> effects in possibleActions_effects.Values)
            {
                foreach (Action chosen in alreadyChosenActions)
                {
                    foreach (Predicate p in chosen.HashEffects)
                    {
                        effects.Remove(p);
                    }
                }
            }
            foreach (List<Predicate> preconditions in possibleActions_preconditions.Values)
            {
                foreach (Action chosen in alreadyChosenActions)
                {
                    foreach (Predicate p in chosen.HashPrecondition)
                    {
                        preconditions.Remove(p);
                    }
                }
            }


            //pick the achievable action with the most remaining predicates.
            //if there are no achievable actions, pick the action with the most remaining predicates.
            //if there are several actions with the max remaining predication, pick randomly between them.

            List<Action> achievableActions = new List<Action>();
            foreach (Action action in possibleActions_preconditions.Keys)
            {
                if (possibleActions_preconditions[action].Count == 0)
                {
                    achievableActions.Add(action);
                }
            }

            if (achievableActions.Count == 0)
            {
                achievableActions.AddRange(possibleActions_effects.Keys);
            }

            int maxAmountOfPredicated = -1;
            List<Action> bestActions = new List<Action>();
            foreach (Action action in achievableActions)
            {
                int currCount = possibleActions_effects[action].Count;
                if (currCount > maxAmountOfPredicated)
                {
                    bestActions = new List<Action>();
                    bestActions.Add(action);
                    maxAmountOfPredicated = currCount;
                }
                else if (currCount == maxAmountOfPredicated)
                {
                    bestActions.Add(action);
                }
            }

            int r = rnd.Next(bestActions.Count);
            Action selected = bestActions[r];

            possibleActions_preconditions.Remove(selected);
            possibleActions_effects.Remove(selected);
            return selected;
        }
    }
}
