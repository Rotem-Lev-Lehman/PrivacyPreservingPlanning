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

        public override void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, double percentageToSelect, Agent agent)
        {
            //check if it is a legal operation
            if (percentageToSelect > 1 || percentageToSelect < 0)
            {
                throw new NotSupportedException("The percentage must be between 0 to 1");
            }

            int totalAmountOfEffectsToReveal = effectsWeCanReveal.Count;

            //select the amount of needed dependencies
            int amountToSelect = (int)(percentageToSelect * totalAmountOfEffectsToReveal);

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
