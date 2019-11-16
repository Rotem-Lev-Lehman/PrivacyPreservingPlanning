using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    abstract class AAdvancedProjectionNewScoreBasedDependeciesSelector : AAdvancedProjectionDependenciesSelector
    {
        protected override void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, int amountToPublish, Agent agent)
        {
            
            int totalAmountOfEffectsToReveal = effectsWeCanReveal.Count;

            List<Predicate> privateEffects = new List<Predicate>(agent.ArtificialToPrivate.Keys);
            Dictionary<Predicate, ISet<object>> affecting = new Dictionary<Predicate, ISet<object>>();
            Dictionary<object, int> n_achieved = new Dictionary<object, int>();
            Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances = new Dictionary<object, Dictionary<Predicate, int>>();
            InitializeDictionaries(effectsWeCanReveal, privateEffects, possibleActions, affecting, n_achieved, preconditionsAndAmountOfAppearances, agent);

            //select the amount of needed dependencies
            //int amountToSelect = (int)(percentageToSelect * totalAmountOfEffectsToReveal);
            int amountToSelect = Math.Min(amountToPublish, totalAmountOfEffectsToReveal);

            /*
            List<Predicate> displayed = new List<Predicate>();
            
            Console.WriteLine("effects we can reveal:");
            foreach(Tuple<Action, Predicate> effect in effectsWeCanReveal)
            {
                Console.WriteLine("Action:");
                Console.WriteLine(effect.Item1.Name);
                Console.WriteLine("Effect:");
                Predicate display = DisplayPredicate(effect.Item2, agent);
                Console.WriteLine(display);
                displayed.Add(display);
            }
            */
            /*
            foreach(Predicate p in affecting.Keys)
            {
                Predicate display = DisplayPredicate(p, agent);
                Console.WriteLine("Effect:");
                Console.WriteLine(display);
                Console.WriteLine("Actions:");
                ISet<object> set = affecting[p];
                foreach(object ob in set)
                {
                    Console.WriteLine(((Action)ob).Name);
                }
            }
            */
            /*
            foreach(Action action in possibleActions)
            {
                Console.WriteLine("Action:");
                Console.WriteLine(action.Name);
                Console.WriteLine("PP:");
                int count = 0;
                foreach(Predicate p in action.HashEffects)
                {
                    if(!p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        Console.WriteLine(p);
                        count++;
                    }
                }
                if(count > 1)
                {
                    int br = 0;
                }
            }
            */
            //int breakpoint = 0;

            for (int i = 0; i < amountToSelect; i++)
            {
                FixPrivateEffectsList(effectsWeCanReveal, privateEffects);

                //pick the effect with the most achievable actions.
                //if there are several actions with the max remaining predication, pick randomly between them.
                double maxAmountOfPredicated = -1;
                int maxAffectingNum = -1;
                List<Tuple<Action, Predicate>> bestEffects = new List<Tuple<Action, Predicate>>();

                HashSet<Predicate> effectsToChooseFrom = new HashSet<Predicate>();
                foreach (Predicate p in privateEffects)
                {
                    ISet<object> achieved = getAchieved(affecting, p, preconditionsAndAmountOfAppearances);
                    int currAffectingCount = affecting[p].Count;
                    double score = getScore(achieved, n_achieved);
                    if (score > maxAmountOfPredicated)
                    {
                        maxAmountOfPredicated = score;
                        maxAffectingNum = currAffectingCount;
                        effectsToChooseFrom = new HashSet<Predicate>();
                        effectsToChooseFrom.Add(p);
                    }
                    else if (score == maxAmountOfPredicated)
                    {
                        if(currAffectingCount > maxAffectingNum)
                        {
                            maxAffectingNum = currAffectingCount;
                            effectsToChooseFrom = new HashSet<Predicate>();
                            effectsToChooseFrom.Add(p);
                        }
                        else if(currAffectingCount == maxAffectingNum)
                        {
                            effectsToChooseFrom.Add(p);
                        }
                        
                    }
                }
                
                foreach (Tuple<Action, Predicate> effect in effectsWeCanReveal)
                {
                    if (effectsToChooseFrom.Contains(effect.Item2))
                    {
                        bestEffects.Add(effect);
                    }
                }

                //previously, we chose randomly from the best effects list.
                //int r = rnd.Next(bestEffects.Count);
                //now we choose determinsticly from it (choose the first one there):
                int r = 0;
                Tuple<Action, Predicate> chosen = bestEffects[r];

                //record selection:
                RecordSelection(agent, chosen);

                ((CompoundFormula)chosen.Item1.Effects).AddOperand(chosen.Item2);
                chosen.Item1.HashEffects.Add(chosen.Item2);

                effectsWeCanReveal.Remove(chosen);

                //fix the n_achieved and the preconditionsAndAmountOfAppearances:
                fixDictionaries(affecting, n_achieved, preconditionsAndAmountOfAppearances, chosen.Item2);
            }
        }

        private Predicate DisplayPredicate(Predicate p, Agent agent)
        {
            bool negation = false;
            GroundedPredicate curr = (GroundedPredicate)p;
            if (p.Negation)
            {
                negation = true;
                curr = (GroundedPredicate) p.Negate();
            }
            Predicate display = agent.ArtificialToPrivate[curr];
            if (negation)
            {
                display = display.Negate();
            }
            return display;
        }

        private void fixDictionaries(Dictionary<Predicate, ISet<object>> affecting, Dictionary<object, int> n_achieved, Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances, Predicate p)
        {
            ISet<object> curr_affecting = affecting[p];
            foreach(object a in curr_affecting)
            {
                Dictionary<Predicate, int> curr_preconditions = preconditionsAndAmountOfAppearances[a];
                curr_preconditions[p]++;
                bool flagAchieved = true;
                foreach(int amount in curr_preconditions.Values)
                {
                    if(amount == 0)
                    {
                        flagAchieved = false;
                        break;
                    }
                    if(amount < 0)
                    {
                        throw new Exception("The amount must be a non negative number");
                    }
                }
                if (flagAchieved)
                {
                    //we have achieved this object!
                    n_achieved[a]++;
                    foreach(Predicate precondition in curr_preconditions.Keys.ToList())
                    {
                        curr_preconditions[precondition]--;
                    }
                }
            }
        }

        private double getScore(ISet<object> achieved, Dictionary<object, int> n_achieved)
        {
            double score = 0;
            foreach(object a in achieved)
            {
                score += (1.0 / (1.0 + n_achieved[a]));
            }
            return score;
        }

        private ISet<object> getAchieved(Dictionary<Predicate, ISet<object>> affecting, Predicate p, Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances)
        {
            ISet<object> achieved = new HashSet<object>();
            ISet<object> curr_affecting = affecting[p];
            foreach(object currObj in curr_affecting)
            {
                Dictionary<Predicate, int> preconditions = preconditionsAndAmountOfAppearances[currObj];
                bool achievedFlag = true;
                foreach(Predicate predicate in preconditions.Keys)
                {
                    if (!predicate.Equals(p))
                    {
                        if (preconditions[predicate] == 0)
                        {
                            achievedFlag = false;
                            break;
                        }
                    }
                }
                if (achievedFlag)
                {
                    achieved.Add(currObj);
                }
            }

            return achieved;
        }

        private void InitializeDictionaries(List<Tuple<Action, Predicate>> effectsWeCanReveal, List<Predicate> privateEffects, List<Action> possibleActions, Dictionary<Predicate, ISet<object>> affecting, Dictionary<object, int> n_achieved, Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances, Agent agent)
        {
            //insert the negations to the private effects list:
            List<Predicate> negations = new List<Predicate>();
            foreach (Predicate p in privateEffects)
            {
                Predicate negation = p.Negate();
                negations.Add(negation);
            }
            privateEffects.AddRange(negations);

            //if the predicate is not interesting (it is not an effect that we can reveal - i.e a constant), remove it from the private effects:
            List<Predicate> removeList = FindEffectsThatCantBePublished(effectsWeCanReveal, privateEffects);

            foreach(Predicate p in removeList)
            {
                privateEffects.Remove(p);
            }

            foreach (Predicate p in privateEffects)
            {
                //add p to the dictionaries, start it there with a new hashset:
                affecting.Add(p, new HashSet<object>());
            }

            //calculate preconditionAmount dictionary:
            InitObjectsSpecifiedDictionaries(privateEffects, possibleActions, affecting, n_achieved, preconditionsAndAmountOfAppearances);

            List<GroundedPredicate> startState = agent.GetPrivateStartState();
            List<Predicate> artificialStartState = new List<Predicate>();
            foreach(Predicate p in startState)
            {
                Predicate artificial = GetArtificialPredicate(privateEffects, p, agent);
                if(artificial != null) //if this is an interesting predicate, which is in the private effects list
                {
                    artificialStartState.Add(artificial);
                }
            }

            InitCountersUsingTheStartState(affecting, n_achieved, preconditionsAndAmountOfAppearances, artificialStartState);
        }

        private Predicate GetArtificialPredicate(List<Predicate> privateEffects, Predicate p, Agent agent)
        {
            foreach(Predicate artificial in privateEffects)
            {
                if (artificial.Negation && p.Negation)
                {
                    Predicate artificialNegation = artificial.Negate();
                    if (agent.ArtificialToPrivate.ContainsKey((GroundedPredicate)artificialNegation))
                    {
                        Predicate negation = agent.ArtificialToPrivate[(GroundedPredicate)artificialNegation].Negate();
                        if (negation.Equals(p))
                        {
                            return artificial;
                        }
                    }
                    
                }
                else if(!artificial.Negation && !p.Negation)
                {
                    if (agent.ArtificialToPrivate.ContainsKey((GroundedPredicate)artificial))
                    {
                        if (agent.ArtificialToPrivate[(GroundedPredicate)artificial].Equals(p))
                        {
                            return artificial;
                        }
                    }
                }
                
            }

            return null; //not found == not an interesting predicate
        }

        private void InitCountersUsingTheStartState(Dictionary<Predicate, ISet<object>> affecting, Dictionary<object, int> n_achieved, Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances, List<Predicate> startState)
        {
            foreach(Predicate p in startState)
            {
                fixDictionaries(affecting, n_achieved, preconditionsAndAmountOfAppearances, p);
            }
        }

        private List<Predicate> FindEffectsThatCantBePublished(List<Tuple<Action, Predicate>> effectsWeCanReveal, List<Predicate> privateEffects)
        {
            HashSet<Predicate> predicatesThatCantBePublished = new HashSet<Predicate>(privateEffects);
            foreach(Tuple<Action,Predicate> tuple in effectsWeCanReveal)
            {
                Predicate p = tuple.Item2;
                if (predicatesThatCantBePublished.Contains(p)){
                    predicatesThatCantBePublished.Remove(p);
                }
            }

            return new List<Predicate>(predicatesThatCantBePublished);
        }

        protected abstract void InitObjectsSpecifiedDictionaries(List<Predicate> privateEffects, List<Action> possibleActions, Dictionary<Predicate, ISet<object>> affecting, Dictionary<object, int> n_achieved, Dictionary<object, Dictionary<Predicate, int>> preconditionsAndAmountOfAppearances);

        private void FixPrivateEffectsList(List<Tuple<Action, Predicate>> effectsWeCanReveal, List<Predicate> privateEffects)
        {
            //fix the private effects, keep only pickable effects:
            HashSet<Predicate> effectsStillPickable = new HashSet<Predicate>();
            foreach (Tuple<Action, Predicate> effect in effectsWeCanReveal)
            {
                if (!effectsStillPickable.Contains(effect.Item2))
                    effectsStillPickable.Add(effect.Item2);
            }

            List<Predicate> removeList = new List<Predicate>();
            foreach (Predicate p in privateEffects)
            {
                if (!effectsStillPickable.Contains(p))
                    removeList.Add(p);
            }
            foreach (Predicate p in removeList)
            {
                privateEffects.Remove(p);
            }
        }
    }
}
