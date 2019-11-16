using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionRandomizedDependeciesSelector : AAdvancedProjectionDependenciesSelector
    {
        private Random rnd;

        public AdvancedProjectionRandomizedDependeciesSelector()
        {
            this.rnd = new Random();
        }

        protected override void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, int amountToPublish, Agent agent)
        {

            int totalAmountOfEffectsToReveal = effectsWeCanReveal.Count;

            //select the amount of needed dependencies
            //int amountToSelect = (int)(percentageToSelect * totalAmountOfEffectsToReveal);
            int amountToSelect = Math.Min(amountToPublish, totalAmountOfEffectsToReveal);

            for (int i = 0; i < amountToSelect; i++)
            {
                int r = rnd.Next(totalAmountOfEffectsToReveal);
                Tuple<Action, Predicate> tuple = effectsWeCanReveal[r];

                //record selection:
                RecordSelection(agent, tuple);

                ((CompoundFormula)tuple.Item1.Effects).AddOperand(tuple.Item2);
                tuple.Item1.HashEffects.Add(tuple.Item2);
                effectsWeCanReveal.RemoveAt(r);

                totalAmountOfEffectsToReveal--;
            }
        }
    }
}
