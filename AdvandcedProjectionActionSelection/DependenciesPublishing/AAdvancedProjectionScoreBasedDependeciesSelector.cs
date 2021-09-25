using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    abstract class AAdvancedProjectionScoreBasedDependeciesSelector : AAdvancedProjectionDependenciesSelector
    {
        //private Random rnd;

        public AAdvancedProjectionScoreBasedDependeciesSelector()
        {
            //this.rnd = new Random();
        }

        protected override void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, int amountToPublish, Agent agent)
        {
            int totalAmountOfEffectsToReveal = effectsWeCanReveal.Count;

            List<Predicate> privateEffects = new List<Predicate>(agent.ArtificialToPrivate.Keys);
            Dictionary<Predicate, int> preconditionAmount = new Dictionary<Predicate, int>();
            Dictionary<Predicate, int> appearanceAmount = new Dictionary<Predicate, int>();
            InitializeDictionaries(privateEffects, possibleActions, preconditionAmount, appearanceAmount);

            //select the amount of needed dependencies
            //int amountToSelect = (int)(percentageToSelect * totalAmountOfEffectsToReveal);
            int amountToSelect = Math.Min(amountToPublish, totalAmountOfEffectsToReveal);

            for (int i = 0; i < amountToSelect; i++)
            {
                Program.cancellationTokenSource.Token.ThrowIfCancellationRequested();
                FixPrivateEffectsList(effectsWeCanReveal, privateEffects);

                //pick the effect with the most achievable actions.
                //if there are several actions with the max remaining predication, pick randomly between them.
                int maxAmountOfPredicated = int.MinValue;
                List<Tuple<Action, Predicate>> bestEffects = new List<Tuple<Action, Predicate>>();

                HashSet<Predicate> effectsToChooseFrom = new HashSet<Predicate>();
                foreach (Predicate p in privateEffects)
                {
                    int score = getScore(preconditionAmount, appearanceAmount, p, privateEffects);
                    if (score > maxAmountOfPredicated)
                    {
                        maxAmountOfPredicated = score;
                        effectsToChooseFrom = new HashSet<Predicate>();
                        effectsToChooseFrom.Add(p);
                    }
                    else if (score == maxAmountOfPredicated)
                    {
                        effectsToChooseFrom.Add(p);
                    }
                }

                foreach (Tuple<Action, Predicate> effect in effectsWeCanReveal)
                {
                    if (effectsToChooseFrom.Contains(effect.Item2))
                    {
                        bestEffects.Add(effect);
                    }
                }

                //previously, we chose randomly from the best effects list.
                //int r = rnd.Next(bestEffects.Count);
                //now we choose determinsticly from it (choose the first one there):
                int r = 0;
                Tuple<Action, Predicate> chosen = bestEffects[r];

                //record selection:
                RecordSelection(agent, chosen);

                ((CompoundFormula)chosen.Item1.Effects).AddOperand(chosen.Item2);
                chosen.Item1.HashEffects.Add(chosen.Item2);

                effectsWeCanReveal.Remove(chosen);

                //increase the counter of selection:
                appearanceAmount[chosen.Item2]++;
            }
        }

        private void FixPrivateEffectsList(List<Tuple<Action, Predicate>> effectsWeCanReveal, List<Predicate> privateEffects)
        {
            //fix the private effects, keep only pickable effects:
            HashSet<Predicate> effectsStillPickable = new HashSet<Predicate>();
            foreach (Tuple<Action, Predicate> effect in effectsWeCanReveal)
            {
                if (!effectsStillPickable.Contains(effect.Item2))
                    effectsStillPickable.Add(effect.Item2);
            }

            List<Predicate> removeList = new List<Predicate>();
            foreach (Predicate p in privateEffects)
            {
                if (!effectsStillPickable.Contains(p))
                    removeList.Add(p);
            }
            foreach (Predicate p in removeList)
            {
                privateEffects.Remove(p);
            }
        }

        private void InitializeDictionaries(List<Predicate> privateEffects, List<Action> possibleActions, Dictionary<Predicate, int> preconditionAmount, Dictionary<Predicate, int> appearanceAmount)
        {
            List<Predicate> negations = new List<Predicate>();
            foreach (Predicate p in privateEffects)
            {
                //add p to the dictionaries, start it there with 0:
                preconditionAmount.Add(p, 0);
                appearanceAmount.Add(p, 0);

                //add p's negation to the dictionaries, start it there with 0 as well (we will count them differently):
                Predicate negation = p.Negate();
                preconditionAmount.Add(negation, 0);
                appearanceAmount.Add(negation, 0);

                negations.Add(negation);
            }

            privateEffects.AddRange(negations);

            //calculate preconditionAmount dictionary:
            CalculatePreconditionAmountDictionary(possibleActions, preconditionAmount);
        }

        protected virtual int getScore(Dictionary<Predicate, int> preconditionAmount, Dictionary<Predicate, int> appearanceAmount, Predicate p, List<Predicate> privateEffects)
        {
            int score = preconditionAmount[p] - appearanceAmount[p];
            return score;
        }

        protected abstract void CalculatePreconditionAmountDictionary(List<Action> possibleActions, Dictionary<Predicate, int> preconditionAmount);
    }
}
