using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionPublicPredicatesAchieverDependenciesSelector : AAdvancedProjectionDependenciesSelector
    {
        private Random rnd;

        public AdvancedProjectionPublicPredicatesAchieverDependenciesSelector()
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

            //Green:
            Dictionary<Action, List<Predicate>> preconditionsRemaining = new Dictionary<Action, List<Predicate>>();
            //Blue:
            Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft = new Dictionary<Predicate, List<Action>>();

            //Orange:
            Dictionary<Action, List<Predicate>> actionAndPublicEffectsYetToBePublished = new Dictionary<Action, List<Predicate>>();
            //Yellow:
            Dictionary<Predicate, List<Predicate>> publicEffectsWithOnePreconditionLeft = new Dictionary<Predicate, List<Predicate>>();
            //Reversed orange(from gray to red):
            Dictionary<Predicate, List<Action>> publicEffectsAndActionsYetToBePublished = new Dictionary<Predicate, List<Action>>();

            InitializeActionsWeDidntAchieveYet(possibleActions, preconditionsRemaining, actionsWithOnePreconditionLeft, actionAndPublicEffectsYetToBePublished, publicEffectsWithOnePreconditionLeft, publicEffectsAndActionsYetToBePublished, agent);

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

                //record selection:
                RecordSelection(agent, chosen);

                ((CompoundFormula)chosen.Item1.Effects).AddOperand(chosen.Item2);
                chosen.Item1.HashEffects.Add(chosen.Item2);

                effectsWeCanReveal.Remove(chosen);
                UpdatePreconditions(preconditionsRemaining, actionsWithOnePreconditionLeft, actionAndPublicEffectsYetToBePublished, publicEffectsAndActionsYetToBePublished, publicEffectsWithOnePreconditionLeft, chosen.Item2);
            }
        }

        private void UpdatePreconditions(Dictionary<Action, List<Predicate>> preconditionsRemaining, Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft, Dictionary<Action, List<Predicate>> actionAndPublicEffectsYetToBePublished, Dictionary<Predicate, List<Action>> publicEffectsAndActionsYetToBePublished, Dictionary<Predicate, List<Predicate>> publicEffectsWithOnePreconditionLeft, Predicate p)
        {
            List<Action> toRemove = new List<Action>();

            if (publicEffectsWithOnePreconditionLeft.ContainsKey(p))
            {
                List<Predicate> publicEffectsChosen = publicEffectsWithOnePreconditionLeft[p];
                foreach (Predicate effect in publicEffectsChosen)
                {
                    List<Action> actionsAffected = publicEffectsAndActionsYetToBePublished[effect];
                    foreach (Action action in actionsAffected)
                    {
                        actionAndPublicEffectsYetToBePublished[action].Remove(effect);
                    }
                    publicEffectsAndActionsYetToBePublished.Remove(effect);
                }
                publicEffectsWithOnePreconditionLeft.Remove(p);
            }
            if (actionsWithOnePreconditionLeft.ContainsKey(p))
            {
                List<Action> actionsChosen = actionsWithOnePreconditionLeft[p];
                foreach (Action action in actionsChosen)
                {
                    List<Predicate> publicEffectsAffected = actionAndPublicEffectsYetToBePublished[action];
                    foreach (Predicate effect in publicEffectsAffected)
                    {
                        publicEffectsAndActionsYetToBePublished.Remove(effect);
                    }
                    actionAndPublicEffectsYetToBePublished.Remove(action);
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

                    AddToPublicEffectsWithOnePreconditionLeft(publicEffectsWithOnePreconditionLeft, actionAndPublicEffectsYetToBePublished, action, p);
                }
            }

            foreach (Action action in toRemove)
                preconditionsRemaining.Remove(action);
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

        private void InitializeActionsWeDidntAchieveYet(List<Action> possibleActions, Dictionary<Action, List<Predicate>> preconditionsRemaining, Dictionary<Predicate, List<Action>> actionsWithOnePreconditionLeft, Dictionary<Action, List<Predicate>> actionAndPublicEffectsYetToBePublished, Dictionary<Predicate, List<Predicate>> publicEffectsWithOnePreconditionLeft, Dictionary<Predicate, List<Action>> publicEffectsAndActionsYetToBePublished, Agent agent)
        {
            //possibleActions = all of the available actions
            //preconditionsRemaining = Green, done
            //actionsWithOnePreconditionLeft = Blue, done
            //actionAndPublicEffectsYetToBePublished = Orange, done
            //publicEffectsWithOnePreconditionLeft = Yellow, done
            //publicEffectsAndActionsYetToBePublished = Reversed orange(from gray to red), done
            //agent = the agent relevant

            HashSet<GroundedPredicate> startState = agent.GetPublicStartState();

            //init publicEffectsAndActionsYetToBePublished and actionAndPublicEffectsYetToBePublished:
            foreach (Action action in possibleActions)
            {
                List<Predicate> effects = action.HashEffects;
                List<Predicate> publicEffects = new List<Predicate>();
                foreach (Predicate effect in effects)
                {
                    if (!effect.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //public effect
                        publicEffects.Add(effect);

                        if (publicEffectsAndActionsYetToBePublished.ContainsKey(effect))
                        {
                            publicEffectsAndActionsYetToBePublished[effect].Add(action);
                        }
                        else
                        {
                            List<Action> actions = new List<Action>();
                            actions.Add(action);
                            publicEffectsAndActionsYetToBePublished.Add(effect, actions);
                        }
                    }
                }
                actionAndPublicEffectsYetToBePublished.Add(action, publicEffects);
            }

            foreach (Action action in possibleActions)
            {
                List<Predicate> preconditions = action.HashPrecondition;
                List<Predicate> copyPreconditions = new List<Predicate>(preconditions);
                foreach (Predicate p in preconditions)
                {
                    if (startState.Contains(p))
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

                    if (copyPreconditions.Count == 1)
                    {
                        Predicate p = copyPreconditions[0];
                        AddToActionsWithOnePreconditionLeft(actionsWithOnePreconditionLeft, p, action);

                        AddToPublicEffectsWithOnePreconditionLeft(publicEffectsWithOnePreconditionLeft, actionAndPublicEffectsYetToBePublished, action, p);
                    }
                }
                else
                {
                    //this action is already achievable
                    foreach (Predicate effect in action.HashEffects)
                    {
                        if (!effect.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                        {
                            publicEffectsAndActionsYetToBePublished.Remove(effect); //it is published, so ignore this public effect
                        }
                    }
                    actionAndPublicEffectsYetToBePublished.Remove(action);
                }
            }
            foreach(List<Predicate> effects in publicEffectsWithOnePreconditionLeft.Values)
            {
                List<Predicate> toRemove = new List<Predicate>();
                foreach(Predicate predicate in effects)
                {
                    if (!publicEffectsAndActionsYetToBePublished.ContainsKey(predicate))
                    {
                        toRemove.Add(predicate);
                    }
                }
                foreach(Predicate remove in toRemove)
                {
                    effects.Remove(remove);
                }
            }
        }

        private void AddToPublicEffectsWithOnePreconditionLeft(Dictionary<Predicate, List<Predicate>> publicEffectsWithOnePreconditionLeft, Dictionary<Action, List<Predicate>> actionAndPublicEffectsYetToBePublished, Action action, Predicate p)
        {
            //add to publicEffectsWithOnePreconditionLeft:
            List<Predicate> publicEffectsWithThisPreconditionLeft;
            if (publicEffectsWithOnePreconditionLeft.ContainsKey(p))
            {
                publicEffectsWithThisPreconditionLeft = publicEffectsWithOnePreconditionLeft[p];
            }
            else
            {
                publicEffectsWithThisPreconditionLeft = new List<Predicate>();
                publicEffectsWithOnePreconditionLeft.Add(p, publicEffectsWithThisPreconditionLeft);
            }
            foreach (Predicate predicate in actionAndPublicEffectsYetToBePublished[action])
            {
                if (!publicEffectsWithThisPreconditionLeft.Contains(predicate))
                    publicEffectsWithThisPreconditionLeft.Add(predicate);
            }
        }
    }
}
