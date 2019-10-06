using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionActionsAchieverWithoutNegationDependeciesSelector : AdvancedProjectionActionsAchieverDependeciesSelector
    {
        protected override int getScore(Dictionary<Predicate, int> preconditionAmount, Dictionary<Predicate, int> appearanceAmount, Predicate p, List<Predicate> privateEffects)
        {
            bool allAreNegation = true;
            foreach (Predicate predicate in privateEffects)
            {
                if (!predicate.Negation)
                {
                    //if there is at least one predicate that is not a negation, use this method, else, use the base method (after all of the non negation ones, this will choose smart and not at random...)
                    allAreNegation = false;
                    break;
                }
            }
            if (!allAreNegation)
            {
                if (p.Negation)
                    return int.MinValue; //no chance of picking this, unless there is nothing else to pick...
            }

            //this is relevant in both cases, if all are negation and if there is at least one that isn't...
            //if it is not a negation, return the regular calculation:
            return base.getScore(preconditionAmount, appearanceAmount, p, privateEffects);
        }
    }
}
