using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionDiversityActionSelector : IAdvancedProjectionNonCollaborativeActionSelector
    {
        private Random rnd;

        public AdvancedProjectionDiversityActionSelector()
        {
            rnd = new Random();
        }

        public List<Action> SelectActions(List<Action> possibleActions, double percentageToSelect, Agent agent)
        {
            //check if it is a legal operation
            if (percentageToSelect > 1 || percentageToSelect < 0)
            {
                throw new NotSupportedException("The percentage must be between 0 to 1");
            }

            //select the amount of needed actions
            int amountToSelect = (int)(percentageToSelect * possibleActions.Count);
            List<Action> selected = new List<Action>();

            Dictionary<Action, List<Predicate>> availableActions = new Dictionary<Action, List<Predicate>>();

            //init dictionary:
            foreach(Action action in possibleActions)
            {
                List<Predicate> remainingPredicates = new List<Predicate>(action.HashEffects);
                availableActions.Add(action, remainingPredicates);
            }

            for (int i = 0; i < amountToSelect; i++)
            {
                //pick the action with the most remaining predicates.
                //if there are several actions with the max remaining predication, pick randomly between them.
                int maxAmountOfPredicated = -1;
                List<Action> bestActions = new List<Action>();
                foreach (Action action in availableActions.Keys)
                {
                    int currCount = availableActions[action].Count;
                    if(currCount > maxAmountOfPredicated)
                    {
                        bestActions = new List<Action>();
                        bestActions.Add(action);
                        maxAmountOfPredicated = currCount;
                    }
                    else if(currCount == maxAmountOfPredicated)
                    {
                        bestActions.Add(action);
                    }
                }

                int r = rnd.Next(bestActions.Count);
                Action chosen = bestActions[r];
                
                selectAction(availableActions, chosen, selected);
            }

            return selected;
        }

        private void selectAction(Dictionary<Action, List<Predicate>> availableActions, Action chosen, List<Action> selectedActions)
        {
            List<Predicate> chosensRemainingPredicates = availableActions[chosen];
            availableActions.Remove(chosen);
            selectedActions.Add(chosen);

            foreach (List<Predicate> predicates in availableActions.Values)
            {
                foreach (Predicate p in chosensRemainingPredicates)
                {
                    predicates.Remove(p);
                }
            }
        }
    }
}
