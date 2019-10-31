using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionNewActionsAchieverDependeciesSelector : AAdvancedProjectionNewScoreBasedDependeciesSelector
    {
        protected override void InitObjectsSpecifiedDictionaries(List<Action> possibleActions, Dictionary<Predicate, ISet<object>> affecting, Dictionary<object, int> n_achieved, Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances)
        {
            foreach (Action action in possibleActions)
            {
                //new dictionary:
                Dictionary<Predicate, int> currPreconditions = new Dictionary<Predicate, int>();
                preconditionsAndAmountOfAppearances.Add(action, currPreconditions);

                n_achieved.Add(action, 0); // init each action with 0 because it was never achieved

                foreach (Predicate precondition in action.HashPrecondition)
                {
                    if (precondition.Name.Contains(Domain.ARTIFICIAL_PREDICATE)) //private precondition
                    {
                        //Add this link to the dictionaries:
                        affecting[precondition].Add(action);
                        currPreconditions.Add(precondition, 0); //init each link with 0 because it was never achieved
                    }
                }
            }
        }
    }
}
