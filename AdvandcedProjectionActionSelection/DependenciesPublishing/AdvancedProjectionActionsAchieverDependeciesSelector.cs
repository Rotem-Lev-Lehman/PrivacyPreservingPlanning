using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionActionsAchieverDependeciesSelector : AAdvancedProjectionScoreBasedDependeciesSelector
    {
        protected override void CalculatePreconditionAmountDictionary(List<Action> possibleActions, Dictionary<Predicate, int> preconditionAmount)
        {
            foreach (Action action in possibleActions)
            {
                foreach (Predicate precondition in action.HashPrecondition)
                {
                    if (precondition.Name.Contains(Domain.ARTIFICIAL_PREDICATE)) //private precondition
                    {
                        //increase the corresponding counter:
                        preconditionAmount[precondition]++;
                    }
                }
            }
        }
    }
}
