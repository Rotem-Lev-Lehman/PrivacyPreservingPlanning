using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation.CalculateLeakageLocally
{
    class LeakageCalculatorOneAgent
    {
        /*
         * This class calculates the leakage of a specific agent based on the adverseries agents.
         * We are using the methods from the paper: "Privacy Leakage of Search-based Multi-Agent Planning Algorithms".
         * The agent we want to calculate it's leakage will be called (in the comments) the "agent".
         * The adverseries are collabarating and act as one agent, so they will be called together as the "adversery".
         */

        public Dictionary<LeakagePropertyType, LeakageProperty> properties { get; private set; }
        private List<MapsVertex> Srec; //public states received from the agent
        private List<MapsVertex> Ssen; //public states sent to the agent by the adversery (some other agent)
        private List<MapsVertex> SI; //public states that are reachable from the initial state without using the agent's actions (using only the adversery's actions)
        private Dictionary<Action, List<MapsVertex>> ap_res; // assigns to each action a the set of received states possibly resulting from the application of a, i.e., a is possibly responsible for the edge ending at each such state.

        public LeakageCalculatorOneAgent()
        {
            properties = new Dictionary<LeakagePropertyType, LeakageProperty>();
            foreach(LeakagePropertyType propertyType in Enum.GetValues(typeof(LeakagePropertyType)))
            {
                properties[propertyType] = new LeakageProperty(propertyType);
            }
        }

        public void CalculateLeakage(List<MapsAgent> adversaries, MapsAgent chosen)
        {
            CalculateGroundTruth(chosen);
            CalculateAdverseriesFoundAttributes(adversaries, chosen);
        }

        private void CalculateGroundTruth(MapsAgent chosen)
        {
            HashSet<Action> gt_init_applicable = new HashSet<Action>();
            HashSet<Action> gt_not_init_applicable = new HashSet<Action>();
            HashSet<Action> gt_privately_dependent = new HashSet<Action>();
            HashSet<Action> gt_privately_independent = new HashSet<Action>();

            //HashSet<GroundedPredicate> startState = chosen.startVertexForTrace.GetFullState();
            HashSet<GroundedPredicate> startState = chosen.realStartStateVertex.GetFullState();
            foreach(Action action in GetActionsWithoutInitActions(chosen.publicActions))
            {
                bool has_private_precondition = false;
                bool has_non_start_state_precondition = false;
                foreach(Predicate p in action.HashPrecondition)
                {
                    if (!chosen.regularAgent.PublicPredicates.Contains(p))
                    {
                        // this is a private precondition
                        has_private_precondition = true;
                    }
                    if (!startState.Contains(p))
                    {
                        //this is not a precondition that is available in the start state
                        has_non_start_state_precondition = true;
                    }
                }
                if (has_private_precondition)
                    gt_privately_dependent.Add(action);
                else
                    gt_privately_independent.Add(action);

                if (has_non_start_state_precondition)
                    gt_not_init_applicable.Add(action);
                else
                    gt_init_applicable.Add(action);
            }
            FindActionsWhichArePubliclyEqual(chosen.regularAgent);
            int i = 0;
        }

        private void FindActionsWhichArePubliclyEqual(Agent agent)
        {
            Dictionary<Predicate, int> pred2id = new Dictionary<Predicate, int>();
            Dictionary<int, Predicate> id2pred = new Dictionary<int, Predicate>();
            int id = 0;
            foreach(Predicate p in agent.PublicPredicates)
            {
                pred2id[p] = id;
                id2pred[id] = p;
                id++;
            }
            List<Action> publicActions = agent.publicActions;
            Dictionary<string, HashSet<Action>> samePreconditions = new Dictionary<string, HashSet<Action>>();
            Dictionary<string, HashSet<Action>> sameEffects = new Dictionary<string, HashSet<Action>>();

            foreach(Action action in publicActions)
            {
                HashSet<Predicate> preconditions = GetPublicPredicates(agent, action.HashPrecondition);
                HashSet<Predicate> effects = GetPublicPredicates(agent, action.HashEffects);

                string preconditionsStr = predicates2id_string(pred2id, preconditions);
                string effectsStr = predicates2id_string(pred2id, effects);
                
                if (!samePreconditions.ContainsKey(preconditionsStr))
                {
                    samePreconditions[preconditionsStr] = new HashSet<Action>();
                }
                samePreconditions[preconditionsStr].Add(action);
                if (!sameEffects.ContainsKey(effectsStr))
                {
                    sameEffects[effectsStr] = new HashSet<Action>();
                }
                sameEffects[effectsStr].Add(action);
            }
            List<HashSet<Action>> preconditionsVals = new List<HashSet<Action>>(samePreconditions.Values);
            List<HashSet<Action>> effectsVals = new List<HashSet<Action>>(sameEffects.Values);
            List<HashSet<Action>> publiclyEqualActions = new List<HashSet<Action>>();
            foreach (HashSet<Action> pre in preconditionsVals)
            {
                if (pre.Count < 2)
                    continue;
                foreach(HashSet<Action> eff in effectsVals)
                {
                    HashSet<Action> intersection = new HashSet<Action>(pre);
                    intersection.IntersectWith(eff);
                    if(intersection.Count > 1)
                        publiclyEqualActions.Add(intersection);
                }
            }
            int i = 0;
        }

        private string predicates2id_string(Dictionary<Predicate, int> pred2id, HashSet<Predicate> predicates)
        {
            List<int> ids = new List<int>();
            foreach(Predicate p in predicates)
            {
                ids.Add(pred2id[p]);
            }
            ids.Sort();
            return String.Join(",", ids);
        }

        private void HandleSrecAndSsen(List<MapsVertex> allStates, String chosenAgentName)
        {
            bool validating = Srec.Count > 0 || Ssen.Count > 0;
            if (validating)
                ValidateSrecAndSsen(allStates, chosenAgentName);
            else
                FillSrecAndSsen(allStates, chosenAgentName);
        }

        private void FillSrecAndSsen(List<MapsVertex> allStates, string chosenAgentName)
        {
            foreach (MapsVertex state in allStates)
            {
                // check if this state was sent by the agent or an adversery agent:
                if (state.senderAgent == chosenAgentName)
                {
                    Srec.Add(state);
                }
                else
                {
                    Ssen.Add(state);
                }
            }
        }

        private void ValidateSrecAndSsen(List<MapsVertex> allStates, string chosenAgentName)
        {
            int i_rec = 0;
            int i_sen = 0;
            foreach(MapsVertex state in allStates)
            {
                MapsVertex otherAgentState;
                // check if this state was sent by the agent or an adversery agent:
                if (state.senderAgent == chosenAgentName)
                {
                    otherAgentState = Srec[i_rec];
                    i_rec++;
                }
                else
                {
                    otherAgentState = Ssen[i_sen];
                    i_sen++;
                }
                if (!ArePubliclySameStates(state, otherAgentState))
                    throw new Exception("Validation Failed!");
            }
        }

        private bool ArePubliclySameStates(MapsVertex s1, MapsVertex s2)
        {
            //return EqualDictionaries(s1.stateIndexes, s2.stateIndexes) && PubliclyEqualStates(s1, s2);
            return PubliclyEqualStates(s1, s2) && !PrivatlyDifferentStates(s1, s2);
        }

        private bool EqualDictionaries<TKey, TValue> (Dictionary<TKey, TValue> d1, Dictionary<TKey, TValue> d2)
        {
            return d1.Count == d2.Count && !d1.Except(d2).Any();
        }

        private bool PubliclyEqualStates(MapsVertex s1, MapsVertex s2)
        {
            HashSet<GroundedPredicate> publicS1 = s1.publicFacts;
            HashSet<GroundedPredicate> publicS2 = s2.publicFacts;
            return publicS1.SetEquals(publicS2);
        }

        private bool PubliclyEqualButPrivatlyDifferentStates(MapsVertex s1, MapsVertex s2)
        {
            return PubliclyEqualStates(s1, s2) && PrivatlyDifferentStates(s1, s2);
        }

        private bool PrivatlyDifferentStates(MapsVertex s1, MapsVertex s2)
        {
            return !EqualDictionaries(s1.stateIndexes, s2.stateIndexes) || s1.g != s2.g || s1.h_when_sent != s2.h_when_sent;
        }

        private void CalculateAdverseriesFoundAttributes(List<MapsAgent> adversaries, MapsAgent chosen)
        {
            Srec = new List<MapsVertex>();
            Ssen = new List<MapsVertex>();
            foreach (MapsAgent currAdversery in adversaries)
            {
                HandleSrecAndSsen(currAdversery.allStates, chosen.name);
            }
            HandleSrecAndSsen(chosen.allStates, chosen.name);
            Dictionary<MapsVertex, HashSet<Action>> state2Os = new Dictionary<MapsVertex, HashSet<Action>>();
            foreach (MapsVertex state in Srec)
            {
                HashSet<Action> Os = new HashSet<Action>();
                state2Os[state] = Os;

                HashSet<GroundedPredicate> publicState = state.publicFacts;
                //MapsVertex i_par = state.agent2iparentVertex[chosen.name];
                MapsVertex i_par = state.publicParent; // This works great, but not sure if it is ok with the definitions of the paper... Guy will check with the authors...
                HashSet<GroundedPredicate> public_i_par = i_par.publicFacts;


                // get only the predicates we need to create with the action:
                HashSet<GroundedPredicate> difference = new HashSet<GroundedPredicate>(publicState);
                difference.ExceptWith(public_i_par);

                foreach (Action action in GetActionsWithoutInitActions(chosen.publicActions))
                {
                    bool canApply = true;
                    HashSet<Predicate> publicPreconditions = GetPublicPredicates(chosen.regularAgent, action.HashPrecondition);
                    HashSet<Predicate> publicEffects = GetPublicPredicates(chosen.regularAgent, action.HashEffects);

                    foreach (Predicate pre in publicPreconditions)
                    {
                        if (!public_i_par.Contains(pre))
                        {
                            canApply = false;
                            break;
                        }
                    }
                    if (!canApply)
                        continue;

                    // can apply the action, check if it leads to the public state:
                    bool achievesDiff = true;
                    foreach (Predicate wanted in difference)
                    {
                        if (!publicEffects.Contains(wanted))
                        {
                            achievesDiff = false;
                            break;
                        }
                    }
                    if (!achievesDiff)
                        continue;
                    // can apply the action, and it achieves the wanted state, so add it to the Os set:
                    Os.Add(action);
                }
            }
            List<HashSet<Action>> possible_init_applicable_actions = new List<HashSet<Action>>();
            foreach (MapsVertex s in Srec)
            {
                MapsVertex i_par = s.agent2iparentVertex[chosen.name];
                //if (i_par == chosen.startVertexForTrace)
                if (i_par == chosen.realStartStateVertex)
                {
                    HashSet<Action> Os = state2Os[s];
                    possible_init_applicable_actions.Add(Os);
                }
            }

            HashSet<Action> privately_independent_actions = new HashSet<Action>();
            foreach (MapsVertex s in Srec)
            {
                MapsVertex s_i_par = s.agent2iparentVertex[chosen.name];
                if (s_i_par == null)
                    continue;
                foreach (MapsVertex s_tag in Ssen)
                {
                    if (!PubliclyEqualButPrivatlyDifferentStates(s_i_par, s_tag))
                        continue;
                    foreach (MapsVertex s_double_tag in Srec)
                    {
                        if (ArePubliclySameStates(s_tag, s_double_tag.agent2iparentVertex[chosen.name]))
                        {
                            HashSet<Action> Os = state2Os[s];
                            HashSet<Action> Os_double_tag = state2Os[s_double_tag];
                            HashSet<Action> intersection = new HashSet<Action>(Os);
                            intersection.IntersectWith(Os_double_tag);
                            privately_independent_actions.UnionWith(intersection);
                        }
                    }
                }
            }
            int i = 0; //need to check if the Srec and Ssen were calculated correctly (using the debugger...).
        }

        private HashSet<Predicate> GetPublicPredicates(Agent agent, List<Predicate> predicates)
        {
            HashSet<Predicate> publicPredicates = new HashSet<Predicate>();
            foreach(Predicate p in predicates)
            {
                if (agent.PublicPredicates.Contains(p))
                    publicPredicates.Add(p);
            }
            return publicPredicates;
        }

        private List<Action> GetActionsWithoutInitActions(List<Action> allActions)
        {
            List<Action> actions = new List<Action>();
            foreach(Action a in allActions)
            {
                if (a.Name.Contains("dummy-init-action") || a.Name.Contains("turn-to-regular-actions-stage"))
                    continue;
                actions.Add(a);
            }
            return actions;
        }
    }
}
