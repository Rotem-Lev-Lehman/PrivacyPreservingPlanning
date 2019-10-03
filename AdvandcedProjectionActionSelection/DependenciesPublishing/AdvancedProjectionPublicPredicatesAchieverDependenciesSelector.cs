using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionPublicPredicatesAchieverDependenciesSelector : AAdvancedProjectionScoreBasedDependeciesSelector
    {
        protected override void CalculatePreconditionAmountDictionary(List<Action> possibleActions, Dictionary<Predicate, int> preconditionAmount)
        {
            List<Predicate> privateEffects = new List<Predicate>(preconditionAmount.Keys);
            foreach(Predicate predicate in privateEffects)
            {
                HashSet<Predicate> publicEffectsThisPredicateCanReveal = new HashSet<Predicate>();
                foreach (Action action in possibleActions)
                {
                    if (action.HashPrecondition.Contains(predicate))
                    {
                        foreach(Predicate effect in action.HashEffects)
                        {
                            if (!effect.Name.Contains(Domain.ARTIFICIAL_PREDICATE)) //public effect
                            {
                                if (!publicEffectsThisPredicateCanReveal.Contains(effect))
                                {
                                    publicEffectsThisPredicateCanReveal.Add(effect);
                                }
                            }
                        }
                    }
                }

                preconditionAmount[predicate] = publicEffectsThisPredicateCanReveal.Count;
            }
        }
    }
}
