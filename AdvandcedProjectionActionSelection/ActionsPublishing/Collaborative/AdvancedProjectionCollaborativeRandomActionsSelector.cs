using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionCollaborativeRandomActionsSelector : IAdvancedProjectionCollaborativeActionsSelector
    {
        private Random rnd;

        public AdvancedProjectionCollaborativeRandomActionsSelector()
        {
            this.rnd = new Random();
        }

        public Action selectNextAction(Dictionary<Action, List<Predicate>> possibleActions_effects, Dictionary<Action, List<Predicate>> possibleActions_preconditions, List<Action> alreadyChosenActions, Agent agent)
        {
            Dictionary<Action, List<Predicate>>.KeyCollection keys = possibleActions_effects.Keys;
            //check if it is a legal operation
            if (keys.Count == 0)
            {
                throw new NotSupportedException("There must be at least 1 action to select from");
            }

            //select a random action:
            int r = rnd.Next(keys.Count);

            int i = 0;
            Action selected = null;
            foreach(Action curr in keys)
            {
                if (i == r)
                {
                    selected = curr;
                    break;
                }
                i++;
            }
            possibleActions_effects.Remove(selected);

            return selected;
        }
    }
}
