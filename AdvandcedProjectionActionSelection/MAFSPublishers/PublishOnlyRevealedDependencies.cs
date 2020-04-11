using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    class PublishOnlyRevealedDependencies : IMAFSPublisher
    {
        public bool CanPublish(MapsAgent agent, MapsVertex vertex)
        {
            HashSet<Predicate> effectsRevealed = new HashSet<Predicate>();
            //init with the start state:
            foreach(Predicate p in agent.GetDependenciesAtStartState())
            {
                effectsRevealed.Add(p);
            }
            //iterate through the plan:
            foreach(Action action in vertex.lplan)
            {
                if (action.agent.Equals(agent.name))
                {
                    if (action.isPublic)
                    {
                        //Check preconditions:
                        foreach (Predicate preCond in agent.GetPredicatesPreconditionsForAction(action.Name))
                        {
                            if (!effectsRevealed.Contains(preCond))
                            {
                                //This is not a revealed effect, so it is a forbiden plan. don't publish this state.
                                return false;
                            }
                        }
                        //Reveal:
                        RevealEffects(effectsRevealed, agent.GetPredicatesRevealedByAction(action.Name));
                    }
                    else
                    {
                        //private actions will update the effects revealed, but will not check preconditions...
                        //Reveal:
                        RevealEffects(effectsRevealed, action.HashEffects);
                    }
                }
            }

            return true;
        }

        private void RevealEffects(HashSet<Predicate> effectsRevealed, List<Predicate> effects)
        {
            foreach (Predicate p in effects)
            {
                if (!effectsRevealed.Contains(p))
                {
                    //if it is not already in the revealed effects, add it (remove the negation of it also).
                    Predicate negation = p.Negate();
                    effectsRevealed.Remove(negation);
                    effectsRevealed.Add(p);
                }
            }
        }
    }
}
