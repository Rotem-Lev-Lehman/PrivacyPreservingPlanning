using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionRandomizedActionSelector : IAdvancedProjectionNonCollaborativeActionSelector
    {
        private Random rnd;

        public AdvancedProjectionRandomizedActionSelector()
        {
            rnd = new Random();
        }
        public List<Action> SelectActions(List<Action> possibleActions, double percentageToSelect, Agent agent)
        {
            //check if it is a legal operation
            if(percentageToSelect > 1 || percentageToSelect < 0)
            {
                throw new NotSupportedException("The percentage must be between 0 to 1");
            }

            //select the amount of needed actions
            int amountToSelect = (int)(percentageToSelect * possibleActions.Count);
            List<Action> selected = new List<Action>();

            for(int i = 0; i < amountToSelect; i++)
            {
                int r = rnd.Next(possibleActions.Count);
                selected.Add(possibleActions[r]);
                possibleActions.RemoveAt(r);
            }
            return selected;
        }
    }
}
