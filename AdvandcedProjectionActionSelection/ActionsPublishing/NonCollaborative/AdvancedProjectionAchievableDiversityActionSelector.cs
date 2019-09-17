using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionAchievableDiversityActionSelector : IAdvancedProjectionNonCollaborativeActionSelector
    {
        private Random rnd;

        public AdvancedProjectionAchievableDiversityActionSelector()
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

            Dictionary<Action, List<Predicate>> action_effects = new Dictionary<Action, List<Predicate>>();
            Dictionary<Action, List<Predicate>> action_preconditions = new Dictionary<Action, List<Predicate>>();

            //init dictionarys:
            foreach (Action action in possibleActions)
            {
                List<Predicate> effects = new List<Predicate>(action.HashEffects);
                List<Predicate> preconditions = new List<Predicate>(action.HashPrecondition);

                foreach (Predicate p in agent.GetPublicStartState()) // remove the start state predicates, because we already know them...
                {
                    bool success = preconditions.Remove(p);
                    success = effects.Remove(p);
                }

                action_effects.Add(action, effects);
                action_preconditions.Add(action, preconditions);
            }

            for (int i = 0; i < amountToSelect; i++)
            {
                //pick the achievable action with the most remaining predicates.
                //if there are no achievable actions, pick the action with the most remaining predicates.
                //if there are several actions with the max remaining predication, pick randomly between them.

                List<Action> achievableActions = new List<Action>();
                foreach (Action action in action_preconditions.Keys)
                {
                    if (action_preconditions[action].Count == 0)
                    {
                        achievableActions.Add(action);
                    }
                }

                if (achievableActions.Count == 0)
                {
                    achievableActions.AddRange(action_effects.Keys);
                }

                int maxAmountOfPredicated = -1;
                List<Action> bestActions = new List<Action>();
                foreach (Action action in achievableActions)
                {
                    int currCount = action_effects[action].Count;
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
                Action chosen = bestActions[r];

                selectAction(action_effects, action_preconditions, chosen, selected);
            }

            return selected;
        }

        private void selectAction(Dictionary<Action, List<Predicate>> action_effects, Dictionary<Action, List<Predicate>> action_preconditions, Action chosen, List<Action> selectedActions)
        {
            List<Predicate> chosensRemainingPredicates = action_effects[chosen];
            action_effects.Remove(chosen);
            action_preconditions.Remove(chosen);

            selectedActions.Add(chosen);

            removePredicatesFromValues(action_effects, chosensRemainingPredicates);
            removePredicatesFromValues(action_preconditions, chosensRemainingPredicates);
        }


        private void removePredicatesFromValues(Dictionary<Action, List<Predicate>> dictionary, List<Predicate> predicatesToRemove)
        {
            foreach (List<Predicate> predicates in dictionary.Values)
            {
                foreach (Predicate p in predicatesToRemove)
                {
                    predicates.Remove(p);
                }
            }
        }
    }
}
