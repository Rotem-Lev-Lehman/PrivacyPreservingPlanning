using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    interface IAdvancedProjectionNonCollaborativeActionSelector
    {
        List<Action> SelectActions(List<Action> possibleActions, double percentageToSelect, Agent agent);
    }
}
