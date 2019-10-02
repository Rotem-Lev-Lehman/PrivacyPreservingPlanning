using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionActionsAchieverDependeciesSelector : AAdvancedProjectionDependenciesSelector
    {
        private Random rnd;

        public AdvancedProjectionActionsAchieverDependeciesSelector()
        {
            this.rnd = new Random();
        }

        public override void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, double percentageToSelect, Agent agent)
        {
            //check if it is a legal operation
            if (percentageToSelect > 1 || percentageToSelect < 0)
            {
                throw new NotSupportedException("The percentage must be between 0 to 1");
            }

            int totalAmountOfEffectsToReveal = effectsWeCanReveal.Count;

            Dictionary<Action, List<Predicate>> preconditionsRemaining = new Dictionary<Action, List<Predicate>>();
            Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft = new Dictionary<Predicate, List<Action>>();
            InitializeActionsWeDidntAchieveYet(possibleActions, preconditionsRemaining, actionsWithOnePreconditionLeft, agent);

            //select the amount of needed dependencies
            int amountToSelect = (int)(percentageToSelect * totalAmountOfEffectsToReveal);

            for (int i = 0; i < amountToSelect; i++)
            {
                //pick the effect with the most achievable actions.
                //if there are several actions with the max remaining predication, pick randomly between them.
                int maxAmountOfPredicated = -1;
                List<Tuple<Action, Predicate>> bestEffects = new List<Tuple<Action, Predicate>>();

                foreach (Tuple<Action, Predicate> effect in effectsWeCanReveal)
                {
                    int count = 0;

                    if (actionsWithOnePreconditionLeft.ContainsKey(effect.Item2))
                        count = actionsWithOnePreconditionLeft[effect.Item2].Count;

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

                //record selection:
                RecordSelection(agent, chosen);

                ((CompoundFormula)chosen.Item1.Effects).AddOperand(chosen.Item2);
                chosen.Item1.HashEffects.Add(chosen.Item2);

                effectsWeCanReveal.Remove(chosen);
                UpdatePreconditions(preconditionsRemaining, actionsWithOnePreconditionLeft, chosen.Item2);
            }
        }

        private void UpdatePreconditions(Dictionary<Action, List<Predicate>> actions, Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft, Predicate p)
        {
            List<Action> toRemove = new List<Action>();

            if (actionsWithOnePreconditionLeft.ContainsKey(p))
            {
                List<Action> actionsChosen = actionsWithOnePreconditionLeft[p];
                foreach(Action action in actionsChosen)
                {
                    actions.Remove(action);
                }
                actionsWithOnePreconditionLeft.Remove(p);
            }

            foreach (Action action in actions.Keys)
            {
                List<Predicate> predicates = actions[action];
                bool removed = predicates.Remove(p);
                if (predicates.Count == 0)
                    toRemove.Add(action);
                else if(removed && predicates.Count == 1)
                {
                    Predicate onlyPreconditionLeft = predicates[0];
                    AddToActionsWithOnePreconditionLeft(actionsWithOnePreconditionLeft, onlyPreconditionLeft, action);
                }
            }

            foreach (Action action in toRemove)
                actions.Remove(action);
        }

        private void InitializeActionsWeDidntAchieveYet(List<Action> possibleActions, Dictionary<Action, List<Predicate>> preconditionsRemaining, Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft, Agent agent)
        {
            HashSet<GroundedPredicate> startState = agent.GetPublicStartState();
            

            foreach (Action action in possibleActions)
            {
                List<Predicate> preconditions = action.HashPrecondition;
                List<Predicate> copyPreconditions = new List<Predicate>(preconditions);
                foreach(Predicate p in preconditions)
                {
                    if(startState.Contains(p))
                    {
                        copyPreconditions.Remove(p);
                    }
                    else
                    {
                        if (!p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                            copyPreconditions.Remove(p);
                    }
                }
                if (copyPreconditions.Count != 0)
                {
                    preconditionsRemaining.Add(action, copyPreconditions);

                    if(copyPreconditions.Count == 1)
                    {
                        Predicate p = copyPreconditions[0];
                        AddToActionsWithOnePreconditionLeft(actionsWithOnePreconditionLeft, p, action);
                    }
                }
            }
        }

        private void AddToActionsWithOnePreconditionLeft(Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft, Predicate p, Action action)
        {
            List<Action> actionsWithThisPreconditionLeft;
            if (actionsWithOnePreconditionLeft.ContainsKey(p))
            {
                actionsWithThisPreconditionLeft = actionsWithOnePreconditionLeft[p];
            }
            else
            {
                actionsWithThisPreconditionLeft = new List<Action>();
                actionsWithOnePreconditionLeft.Add(p, actionsWithThisPreconditionLeft);
            }
            actionsWithThisPreconditionLeft.Add(action);
        }
    }
}
