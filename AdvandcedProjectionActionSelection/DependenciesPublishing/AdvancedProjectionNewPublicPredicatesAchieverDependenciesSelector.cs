using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionNewPublicPredicatesAchieverDependenciesSelector : AAdvancedProjectionNewScoreBasedDependeciesSelector
    {
        protected override void InitObjectsSpecifiedDictionaries(List<Predicate> privateEffects, List<Action> possibleActions, Dictionary<Predicate, ISet<object>> affecting, Dictionary<object, int> n_achieved, Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances)
        {
            foreach (Predicate predicate in privateEffects)
            {
                ISet<object> publicEffectsThisPredicateCanReveal = affecting[predicate];
                foreach (Action action in possibleActions)
                {
                    if (action.HashPrecondition.Contains(predicate))
                    {
                        foreach (Predicate effect in action.HashEffects)
                        {
                            if (!effect.Name.Contains(Domain.ARTIFICIAL_PREDICATE)) //public effect
                            {
                                if (!publicEffectsThisPredicateCanReveal.Contains(effect))
                                {
                                    publicEffectsThisPredicateCanReveal.Add(effect);

                                    Dictionary<Predicate, int> currPublicEffects;
                                    if (preconditionsAndAmountOfAppearances.ContainsKey(effect))
                                    {
                                        currPublicEffects = preconditionsAndAmountOfAppearances[effect];
                                    }
                                    else
                                    {
                                        currPublicEffects = new Dictionary<Predicate, int>();
                                        preconditionsAndAmountOfAppearances.Add(effect, currPublicEffects);

                                        //init this here because if we are here, then this is the first time we saw this public effect:
                                        n_achieved.Add(effect, 0); //init the public effect with 0, because it wasn't achieved yet.
                                    }
                                    currPublicEffects.Add(predicate, 0); //init the precondition with 0, because it wasn't achieved yet
                                }
                            }
                        }
                    }
                }

                //preconditionAmount[predicate] = publicEffectsThisPredicateCanReveal.Count;
            }
        }
    }
}
