using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    interface IAdvancedProjectionCollaborativeActionsSelector
    {
        Action selectNextAction(Dictionary<Action, List<Predicate>> possibleActions_effects, Dictionary<Action, List<Predicate>> possibleActions_preconditions, List<Action> alreadyChosenActions, Agent agent);
    }
}
