using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionPublicPredicatesAchieverDependenciesSelector : IAdvancedProjectionDependeciesSelector
    {
        private Random rnd;

        public AdvancedProjectionPublicPredicatesAchieverDependenciesSelector()
        {
            this.rnd = new Random();
        }

        public void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, double percentageToSelect, Agent agent)
        {
            /*
            //check if it is a legal operation
            if (percentageToSelect > 1 || percentageToSelect < 0)
            {
                throw new NotSupportedException("The percentage must be between 0 to 1");
            }

            int totalAmountOfEffectsToReveal = effectsWeCanReveal.Count;

            Dictionary<Action, List<Predicate>> preconditionsRemaining = new Dictionary<Action, List<Predicate>>();
            Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft = new Dictionary<Predicate, List<Action>>();

            Dictionary<Action, List<Predicate>> actionAndPublicEffectsYetToBePublished = new Dictionary<Action, List<Predicate>>();
            Dictionary<Predicate, List<Predicate>> publicEffectsWithOnePreconditionLeft = new Dictionary<Predicate, List<Predicate>>();

            InitializeActionsWeDidntAchieveYet(possibleActions, preconditionsRemaining, actionsWithOnePreconditionLeft, actionAndPublicEffectsYetToBePublished, publicEffectsWithOnePreconditionLeft, agent);

            //select the amount of needed dependencies
            int amountToSelect = (int)(percentageToSelect * totalAmountOfEffectsToReveal);

            for (int i = 0; i < amountToSelect; i++)
            {
                //pick the effect with the most achievable public effects.
                //if there are several actions with the max remaining predication, pick randomly between them.
                int maxAmountOfPredicated = -1;
                List<Tuple<Action, Predicate>> bestEffects = new List<Tuple<Action, Predicate>>();

                foreach (Tuple<Action, Predicate> effect in effectsWeCanReveal)
                {
                    int count = 0;

                    if (publicEffectsWithOnePreconditionLeft.ContainsKey(effect.Item2))
                        count = publicEffectsWithOnePreconditionLeft[effect.Item2].Count;

                    if (count > maxAmountOfPredicated)
                    {
                        maxAmountOfPredicated = count;
                        bestEffects = new List<Tuple<Action, Predicate>>();
                        bestEffects.Add(effect);
                    }
                    else if (count == maxAmountOfPredicated)
                    {
                        bestEffects.Add(effect);
                    }
                }

                int r = rnd.Next(bestEffects.Count);
                Tuple<Action, Predicate> chosen = bestEffects[r];
                ((CompoundFormula)chosen.Item1.Effects).AddOperand(chosen.Item2);
                chosen.Item1.HashEffects.Add(chosen.Item2);

                effectsWeCanReveal.Remove(chosen);
                UpdatePreconditions(preconditionsRemaining, actionsWithOnePreconditionLeft, actionAndPublicEffectsYetToBePublished, publicEffectsWithOnePreconditionLeft, chosen.Item2);
            }
            */

        }

        private void UpdatePreconditions(Dictionary<Action, List<Predicate>> preconditionsRemaining, Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft, Dictionary<Action, List<Predicate>> actionAndPublicEffectsYetToBePublished, Dictionary<Predicate, List<Predicate>> publicEffectsWithOnePreconditionLeft, Predicate p)
        {
            /*
            List<Action> toRemove = new List<Action>();
            List<Predicate> publicEffectsRevealed = new List<Predicate>();
            continue here

            if (actionsWithOnePreconditionLeft.ContainsKey(p))
            {
                List<Action> actionsChosen = actionsWithOnePreconditionLeft[p];
                foreach (Action action in actionsChosen)
                {
                    preconditionsRemaining.Remove(action);
                }
                actionsWithOnePreconditionLeft.Remove(p);
            }

            foreach (Action action in preconditionsRemaining.Keys)
            {
                List<Predicate> predicates = preconditionsRemaining[action];
                bool removed = predicates.Remove(p);
                if (predicates.Count == 0)
                    toRemove.Add(action);
                else if (removed && predicates.Count == 1)
                {
                    Predicate onlyPreconditionLeft = predicates[0];
                    AddToActionsWithOnePreconditionLeft(actionsWithOnePreconditionLeft, onlyPreconditionLeft, action);
                }
            }

            foreach (Action action in toRemove)
                preconditionsRemaining.Remove(action);
           */
        }

        private void InitializeActionsWeDidntAchieveYet(List<Action> possibleActions, Dictionary<Action, List<Predicate>> preconditionsRemaining, Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft, Dictionary<Action, List<Predicate>> actionAndPublicEffectsYetToBePublished, Dictionary<Predicate, List<Predicate>> publicEffectsWithOnePreconditionLeft, Agent agent)
        {
            throw new NotImplementedException();
        }
    }
}
