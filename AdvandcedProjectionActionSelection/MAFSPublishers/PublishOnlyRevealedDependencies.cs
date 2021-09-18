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
            //remember which effects were revealed:
            HashSet<Predicate> effectsRevealed = new HashSet<Predicate>();
            //remember which action revealed this effect:
            Dictionary<Predicate, string> whoRevealed = new Dictionary<Predicate, string>();
            //init with the start state:
            List<Predicate> dependenciesFromStartState = agent.GetDependenciesAtStartState();
            foreach (Predicate p in dependenciesFromStartState)
            {
                effectsRevealed.Add(p);
                whoRevealed[p] = "Start-State";
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
                                //This is not a revealed effect, so it is a forbidden plan. don't publish this state.
                                return false;
                            }
                            else
                            {
                                //It is a used dependency.
                                string previousAction = whoRevealed[preCond];
                                agent.AddToUsedDependencies(previousAction, preCond);
                            }
                        }
                        //Reveal:
                        RevealEffects(effectsRevealed, agent.GetPredicatesRevealedByAction(action.Name)/*, agent.GetAllPossibleDependenciesOfAction(action.Name)*/, action, whoRevealed);
                    }
                }
            }

            return true;
        }

        private void RevealEffects(HashSet<Predicate> effectsRevealed, List<Predicate> effects/*, List<Predicate> allPossibleDependencies*/, Action action, Dictionary<Predicate, string> whoRevealed)
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
                if (action.isPublic)
                {
                    //The dependencies are only between public actions.
                    whoRevealed[p] = action.Name;
                }
            }
        }
    }
}
