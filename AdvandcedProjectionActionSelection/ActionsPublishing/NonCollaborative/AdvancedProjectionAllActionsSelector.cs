using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionAllActionsSelector : IAdvancedProjectionNonCollaborativeActionSelector
    {
        public List<Action> SelectActions(List<Action> possibleActions, double percentageToSelect, Agent agent)
        {
            //select all of the actions, no matter what is the percentage or the agent.
            return possibleActions;
        }
    }
}
