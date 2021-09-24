using Planning.AdvandcedProjectionActionSelection.OptimalPlanner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation;


namespace Planning
{
    class MapsAgent
    {
        public static Mutex heursticCalcultionMutex = (Mutex)null;
        public static Dictionary<string, Mutex> massageListMutex = (Dictionary<string, Mutex>)null;
        public static Mutex goalChackMutex = (Mutex)null;
        public static Dictionary<string, bool> preferFlags = (Dictionary<string, bool>)null;
        public static Mutex tmpMutex = null;
        public string name = "";
        public HashSet<GroundedPredicate> publicFacts = null;
        public AdvancedProjectionHeuristic projectionHeuristic = null;
        public Dictionary<string, List<Action>> heuristicPlan = null;
        public HashSet<GroundedPredicate> privateFacts = null;
        public List<GroundedPredicate> goal = null;
        private List<Action> m_actions = null;
        public List<Action> publicActions = null;
        public List<Action> privateActions = null;
        // private Problem problem;
        private Domain domain;
        private Problem problem;

        public MapsVertex startState = null;
        Dictionary<State, int> privateStateToIndex = null;
        Dictionary<int, State> indexToPrivateState = null;
        public List<GroundedPredicate> allGoal = null;


        public List<Landmark> publicRelevantLandmark = null;

        private List<Order> orderList = null;

        HashSet<MapsVertex> closeList = null;

        HashSet<MapsVertex> myOpenList = null;
        bool fGoal;
        MapsVertex courentVertex = null;
        bool first;


        Dictionary<string, int> landmarksCount = null;
        Dictionary<string, HashSet<MapsVertex>> openLists = null;

        Dictionary<string, HashSet<MapsVertex>> receivedStates = null;
        //Dictionary<string, Mutex> globalMutex;
        List<string> agentsNames = null;
        public List<Order> ReasonableOrdering = null;

        Dictionary<string, List<Predicate>> actionName_to_revealedDependenciesList;
        Dictionary<string, List<Predicate>> actionName_to_allDependenciesList;
        Dictionary<string, List<Predicate>> actionName_to_preconditionsDependenciesList;

        List<Predicate> dependenciesAtStartState;
        HashSet<Tuple<string, Predicate>> dependenciesUsed;

        //Revealing dependencies when stuck:
        Dictionary<Dependency, List<MapsVertex>> dependency_to_nonPublishedStatesList;
        PriorityQueue<Dependency, int> nextDependencyToBeRevealed;
        const int NUM_STATES_UNTIL_REVEALING_DEPENDENCY = 1000;
        int currentAmountOfStates;
        //now we need to use these datastructures in order to pick which dependency should be revealed when we get to a dead-end (1000 states without solving the problem)

        public MapsVertex startVertexForTrace;
        public Agent regularAgent;
        public MapsVertex realStartStateVertex;

        //For leakage calculation:
        public List<MapsVertex> allSentStates { get; private set; }
        public void AddToAllSentStates(MapsVertex sentVertex)
        {
            allSentStates.Add(sentVertex);
            allStates.Add(sentVertex);
        }
        public List<MapsVertex> allReceivedStates { get; private set; }
        public void AddToAllReceivedStates(MapsVertex recVertex)
        {
            allReceivedStates.Add(recVertex);
            allStates.Add(recVertex);
        }
        public List<MapsVertex> allStates { get; private set; }
        
        public static void ResetStaticFields()
        {
            counter = 0;
            preferFlags = (Dictionary<string, bool>)null;
        }

        public int GetID()
        {
            return Agent.getID(name);
        }

        public static void InitMutex()
        {
            heursticCalcultionMutex = new Mutex();
            tmpMutex = new Mutex();
        }
        public MapsAgent(MapsVertex start, Agent a, List<GroundedPredicate> m_allGoal, Dictionary<string, int> m_landmarksCount, Dictionary<string, HashSet<MapsVertex>> m_openLists, Dictionary<string, HashSet<MapsVertex>> m_receivedStates, Dictionary<string, Mutex> m_globalMutex, Dictionary<string, int> countOfReasonableOrdering, List<GroundedPredicate> fullState)
        {
            startVertexForTrace = start;
            realStartStateVertex = null;
            firstIt = true;
            domain = a.domain;
            problem = a.problem;
            privateStateToIndex = new Dictionary<State, int>();
            indexToPrivateState = new Dictionary<int, State>();
            goal = new List<GroundedPredicate>(a.goal);
            m_actions = new List<Action>(a.m_actions);
            publicActions = a.publicActions;
            privateActions = a.privateActions;
            //ReasonableOrdering = new List<Order>();
            ReasonableOrdering = a.ReasonableOrdering;
            name = a.name;
            publicRelevantLandmark = a.publicRelevantLandmark;
            orderList = a.orderList;
            publicFacts = a.PublicPredicates;
            privateFacts = new HashSet<GroundedPredicate>();
            foreach (GroundedPredicate gp in a.Predicates)
            {
                if (!publicFacts.Contains(gp))
                {
                    privateFacts.Add(gp);
                }
            }
            allGoal = new List<GroundedPredicate>();
            allGoal.AddRange(m_allGoal);


            landmarksCount = m_landmarksCount;
            openLists = m_openLists;
            //globalMutex = m_globalMutex;
            receivedStates = m_receivedStates;
            State privateStartState = new State((Problem)null);
            List<GroundedPredicate> publicStartState = new List<GroundedPredicate>();
            foreach (GroundedPredicate gp in a.startState.m_lPredicates)
            {
                if (!a.PublicPredicates.Contains(gp))
                    privateStartState.AddPredicate(gp);
                else
                {
                    publicStartState.Add(gp);
                }
            }
            /*  foreach (GroundedPredicate gp in aproximationState.Predicates)
              {
                  if (PublicPredicates.Contains(gp))
                  {
                      aproximatePublicState.AddPredicate(gp);
                  }
              }*/
            // prePlanning();


            closeList = new HashSet<MapsVertex>();

            agentsNames = openLists.Keys.ToList();


            //  Dictionary<State, int> closeList = new Dictionary<State, int>();
            myOpenList = new HashSet<MapsVertex>();
            myPreferableOpenList = new HashSet<MapsVertex>();
            // MapsVertex agentStartVertex = new MapsVertex(privateStartState, publicStartState, landmarksCount, landmarksCount.Keys.ToArray(), name, allGoal.Count, countOfReasonableOrdering);

            myOpenList.Add(start);


            fGoal = false;
            MapsVertex courentVertex = null;
            first = true;

            actionName_to_revealedDependenciesList = new Dictionary<string, List<Predicate>>();
            actionName_to_allDependenciesList = new Dictionary<string, List<Predicate>>();
            actionName_to_preconditionsDependenciesList = new Dictionary<string, List<Predicate>>();
            dependenciesAtStartState = new List<Predicate>();
            dependenciesUsed = new HashSet<Tuple<string, Predicate>>();

            allSentStates = new List<MapsVertex>();
            allReceivedStates = new List<MapsVertex>();
            allStates = new List<MapsVertex>();
        }

        public void AddToEffectsActionsAndDependencies(string actionName, List<Predicate> predicates)
        {
            actionName_to_revealedDependenciesList.Add(actionName, predicates);
        }

        public void AddToAllDependenciesListOfAction(string actionName, List<Predicate> predicates)
        {
            actionName_to_allDependenciesList.Add(actionName, predicates);
        }

        public void AddToPreconditionActionsAndDependencies(string actionName, List<Predicate> predicates)
        {
            actionName_to_preconditionsDependenciesList.Add(actionName, predicates);
        }

        public void AddToUsedDependencies(string action, Predicate effect)
        {
            dependenciesUsed.Add(new Tuple<string, Predicate>(action, effect));
        }

        public int GetAmountOfUsedDependencies()
        {
            return dependenciesUsed.Count;
        }

        public void SetDependenciesAtStartState(List<Predicate> predicates)
        {
            dependenciesAtStartState = predicates;
        }

        public List<Predicate> GetPredicatesRevealedByAction(string actionName)
        {
            return actionName_to_revealedDependenciesList[actionName];
        }

        public List<Predicate> GetAllPossibleDependenciesOfAction(string actionName)
        {
            throw new NotImplementedException();
        }

        public List<Predicate> GetPredicatesPreconditionsForAction(string actionName)
        {
            return actionName_to_preconditionsDependenciesList[actionName];
        }

        public List<Predicate> GetDependenciesAtStartState()
        {
            return dependenciesAtStartState;
        }

        public void SetPublicOpenLists(Dictionary<string, HashSet<MapsVertex>> newGlobalOpenList)
        {
            openLists = newGlobalOpenList;
        }

        public HashSet<Predicate> WhatICanGet(HashSet<Predicate> courrentStateOrg)
        {
            HashSet<Predicate> courrentState = new HashSet<Predicate>(courrentStateOrg);
            bool flag2 = true;
            List<Action> tempActionList = new List<Action>();
            while (flag2)
            {
                flag2 = false;


                foreach (Action act in privateActions)
                {
                    if (tempActionList.Contains(act))
                        continue;
                    if (Contains(courrentState, act.HashPrecondition))
                    {
                        tempActionList.Add(act);

                        if (act.Effects != null)
                        {
                            foreach (GroundedPredicate addProp in act.HashEffects)
                            {
                                if (!courrentState.Contains(addProp))
                                {
                                    courrentState.Add(addProp);
                                    flag2 = true;
                                }

                            }
                        }

                    }


                }
            }

            return courrentState;

        }
        public Dictionary<GroundedPredicate, int> GetRelaxGraph(State s, List<GroundedPredicate> restGoals)
        {
            Dictionary<GroundedPredicate, int> deleteGraph = new Dictionary<GroundedPredicate, int>();
            foreach (GroundedPredicate gp in s.m_lPredicates)
            {
                deleteGraph.Add(gp, 0);
            }


            HashSet<Predicate> tmpState = new HashSet<Predicate>(s.m_lPredicates);
            bool stop = false;
            int level = 1;
            List<GroundedPredicate> setCopy = new List<GroundedPredicate>();
            HashSet<Action> allReadyUse = new HashSet<Action>();
            while (!stop)
            {
                stop = true;
                foreach (Action action in m_actions)
                {
                    if (allReadyUse.Contains(action))
                        continue;
                    if (Contains(tmpState, action.HashPrecondition))
                    {
                        allReadyUse.Add(action);
                        foreach (GroundedPredicate eff in action.HashEffects)
                        {
                            if (!tmpState.Contains(eff) && !setCopy.Contains(eff))
                            {
                                //publicPre.Add(eff, 1);
                                setCopy.Add(eff);
                            }
                        }
                    }
                }
                foreach (GroundedPredicate add in setCopy)
                {
                    tmpState.Add(add);
                    if (publicFacts.Contains(add))
                    {
                        deleteGraph.Add(add, level);
                    }
                    stop = false;
                }
                level++;
                setCopy = new List<GroundedPredicate>();
                if (!stop)
                {
                    stop = true;
                    foreach (GroundedPredicate goalFact in restGoals)
                    {
                        if (!tmpState.Contains(goalFact))
                        {
                            stop = false;
                            break;
                        }
                    }
                }
            }
            return deleteGraph;

        }

        public bool[][] Geth(State courentState, out bool[] satisfiedNew, bool[] lVetor, bool[] oVector)
        {
            bool[] landmarksVector = new bool[lVetor.Length];
            bool[] ReasonableOrdering = new bool[oVector.Length];
            Array.Copy(lVetor, landmarksVector, lVetor.Length);
            Array.Copy(oVector, ReasonableOrdering, oVector.Length);

            bool[] newPublicRelevantLandmarks = null;
            bool[] newReasonableOrdering = null;

            int notSatisfy = SatisfyLandmark(courentState.m_lPredicates, landmarksVector, out newPublicRelevantLandmarks, ReasonableOrdering, out newReasonableOrdering, out satisfiedNew);

            bool[][] ans = new bool[2][];
            ans[0] = new bool[newPublicRelevantLandmarks.Length];
            ans[1] = new bool[newReasonableOrdering.Length];
            Array.Copy(newPublicRelevantLandmarks, ans[0], newPublicRelevantLandmarks.Length);
            Array.Copy(newReasonableOrdering, ans[1], newReasonableOrdering.Length);
            return ans;
        }

        public bool[][] GetInitialVectors(State courrent)
        {
            bool[] landmarkVector = new bool[publicRelevantLandmark.Count];
            bool[] newLandmarkVector = new bool[publicRelevantLandmark.Count];


            for (int i = 0; i < landmarkVector.Length; i++)
            {
                landmarkVector[i] = false;
            }
            bool[] actionVector = new bool[privateActions.Count];

            bool[] reasonableOrdering = new bool[ReasonableOrdering.Count()];
            bool[] outReasonableOrdering = null;
            bool[] satisfiedNew = null;
            SatisfyLandmark(courrent.m_lPredicates, landmarkVector, out newLandmarkVector, reasonableOrdering, out outReasonableOrdering, out satisfiedNew);


            bool[][] initialVectors = new bool[2][];
            initialVectors[0] = newLandmarkVector;
            initialVectors[1] = outReasonableOrdering;
            return initialVectors;
        }

        private int SatisfyLandmark2(HashSet<Predicate> newState, bool[] landmarks, out bool[] notSatisfiedLandmarks, bool[] reasonableOrderingVector, out bool[] outReasonableOrdering, out bool[] satisfiedNew)
        {
            outReasonableOrdering = new bool[reasonableOrderingVector.Length];
            Array.Copy(reasonableOrderingVector, outReasonableOrdering, reasonableOrderingVector.Length);
            int notSatisfied = 0;
            bool f = false;
            notSatisfiedLandmarks = new bool[landmarks.Length];
            satisfiedNew = new bool[landmarks.Length];
            for (int i = 0; i < landmarks.Length; i++)
            {
                f = false;
                if (landmarks[i] == false)
                {
                    foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                    {
                        if (newState.Contains(fact))
                        {
                            notSatisfiedLandmarks[i] = true;
                            satisfiedNew[i] = true;
                            f = true;
                            /*for (int k = 0; k < outReasonableOrdering.Length; k++)
                            {
                                if (outReasonableOrdering[k] == false && ReasonableOrdering[k].lendmark1.Equals(publicRelevantLandmark[i]))
                                {
                                    outReasonableOrdering[k] = true;
                                }
                            }*/
                            break;
                        }

                    }

                    if (!f)
                    {
                        notSatisfiedLandmarks[i] = false;
                        notSatisfied += 1;
                    }
                }
                else
                {
                    //if (publicRelevantLandmark[i].facts.ElementAt(0).Value.Equals("Goal"))
                    if (publicRelevantLandmark[i].GoalLandmark)
                    {
                        foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                        {
                            if (newState.Contains(fact))
                            {
                                notSatisfiedLandmarks[i] = true;
                                satisfiedNew[i] = true;
                                f = true;
                                break;
                            }

                        }

                        if (!f)
                        {

                            notSatisfiedLandmarks[i] = false;
                            notSatisfied += 1;// publicRelevantLandmark[i].worth;
                        }

                    }
                    else
                    {
                        notSatisfiedLandmarks[i] = true;
                        foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                        {
                            if (newState.Contains(fact))
                            {
                                satisfiedNew[i] = true;
                                break;
                            }
                        }
                    }



                }
            }

            bool agein = true;
            while (agein)
            {
                agein = false;
                for (int i = 0; i < notSatisfiedLandmarks.Length; i++)
                {
                    f = false;
                    if (notSatisfiedLandmarks[i] == true)
                    {
                        /*   foreach (Order order in orderList)
                           {
                              // if(order.lendmark1.ToString().Equals(Domain.FALSE_PREDICATE) )
                                  // continue;
                               if (order.lendmark1.Equals(publicRelevantLandmark[i]))
                               {
                                   int index = order.lendmark2.index;
                                   if (index > -1)
                                   {
                                       if (notSatisfiedLandmarks[index] == false)
                                       {
                                           foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                                           {
                                               if (newState.Contains(fact))
                                               {
                                                   notSatisfiedLandmarks[i] = true;
                                                   f = true;
                                                   break;
                                               }

                                           }

                                           if (!f)
                                           {
                                               notSatisfiedLandmarks[i] = false;
                                               notSatisfied += publicRelevantLandmark[i].worth;
                                               agein = true;
                                               break;
                                           }
                                       }
                                   }

                               }
                           }*/
                        int counter = 0;
                        foreach (Order order in ReasonableOrdering)
                        {
                            if (outReasonableOrdering[counter] == false)
                            {
                                if (order.lendmark2.Equals(publicRelevantLandmark[i]))
                                {
                                    int index = order.lendmark1.index;
                                    if (notSatisfiedLandmarks[index] == false)
                                    {
                                        notSatisfiedLandmarks[i] = false;
                                        notSatisfied += 1;// publicRelevantLandmark[i].worth;
                                        agein = true;
                                        break;
                                    }
                                }
                            }
                            counter++;
                        }

                    }

                }
            }
            for (int i = 0; i < notSatisfiedLandmarks.Length; i++)
            {
                if (landmarks[i] == false && notSatisfiedLandmarks[i] == true)
                {
                    for (int k = 0; k < outReasonableOrdering.Length; k++)
                    {
                        if (outReasonableOrdering[k] == false && ReasonableOrdering[k].lendmark1.Equals(publicRelevantLandmark[i]))
                        {
                            outReasonableOrdering[k] = true;
                        }
                    }
                }
            }
            return notSatisfied;
        }
        private int SatisfyLandmark(HashSet<Predicate> newState, bool[] landmarks, out bool[] notSatisfiedLandmarks, bool[] reasonableOrderingVector, out bool[] outReasonableOrdering, out bool[] satisfiedNew)
        {
            outReasonableOrdering = new bool[reasonableOrderingVector.Length];
            Array.Copy(reasonableOrderingVector, outReasonableOrdering, reasonableOrderingVector.Length);
            int notSatisfied = 0;
            bool f = false;
            notSatisfiedLandmarks = new bool[landmarks.Length];
            satisfiedNew = new bool[landmarks.Length];
            for (int i = 0; i < landmarks.Length; i++)
            {
                f = false;
                if (landmarks[i] == false)
                {
                    foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                    {
                        if (newState.Contains(fact))
                        {
                            notSatisfiedLandmarks[i] = true;
                            satisfiedNew[i] = true;
                            f = true;
                            for (int k = 0; k < outReasonableOrdering.Length; k++)
                            {
                                if (outReasonableOrdering[k] == false && ReasonableOrdering[k].lendmark1.Equals(publicRelevantLandmark[i]))
                                {
                                    outReasonableOrdering[k] = true;
                                }
                            }
                            break;
                        }

                    }

                    if (!f)
                    {
                        notSatisfiedLandmarks[i] = false;
                        notSatisfied += 1;
                    }
                }
                else
                {
                    //if (publicRelevantLandmark[i].facts.ElementAt(0).Value.Equals("Goal"))
                    if (publicRelevantLandmark[i].GoalLandmark)
                    {
                        foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                        {
                            if (newState.Contains(fact))
                            {
                                notSatisfiedLandmarks[i] = true;
                                satisfiedNew[i] = true;
                                f = true;
                                break;
                            }

                        }

                        if (!f)
                        {

                            notSatisfiedLandmarks[i] = false;
                            notSatisfied += 1;// publicRelevantLandmark[i].worth;
                        }

                    }
                    else
                    {
                        notSatisfiedLandmarks[i] = true;
                        foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                        {
                            if (newState.Contains(fact))
                            {
                                satisfiedNew[i] = true;
                                break;
                            }
                        }
                    }



                }
            }

            bool agein = true;
            while (agein)
            {
                agein = false;
                for (int i = 0; i < notSatisfiedLandmarks.Length; i++)
                {
                    f = false;
                    if (notSatisfiedLandmarks[i] == true)
                    {
                        /*   foreach (Order order in orderList)
                           {
                              // if(order.lendmark1.ToString().Equals(Domain.FALSE_PREDICATE) )
                                  // continue;
                               if (order.lendmark1.Equals(publicRelevantLandmark[i]))
                               {
                                   int index = order.lendmark2.index;
                                   if (index > -1)
                                   {
                                       if (notSatisfiedLandmarks[index] == false)
                                       {
                                           foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                                           {
                                               if (newState.Contains(fact))
                                               {
                                                   notSatisfiedLandmarks[i] = true;
                                                   f = true;
                                                   break;
                                               }

                                           }

                                           if (!f)
                                           {
                                               notSatisfiedLandmarks[i] = false;
                                               notSatisfied += publicRelevantLandmark[i].worth;
                                               agein = true;
                                               break;
                                           }
                                       }
                                   }

                               }
                           }*/
                        int counter = 0;
                        foreach (Order order in ReasonableOrdering)
                        {
                            if (outReasonableOrdering[counter] == false)
                            {
                                if (order.lendmark2.Equals(publicRelevantLandmark[i]))
                                {
                                    int index = order.lendmark1.index;
                                    if (notSatisfiedLandmarks[index] == false)
                                    {
                                        notSatisfiedLandmarks[i] = false;
                                        notSatisfied += 1;// publicRelevantLandmark[i].worth;
                                        agein = true;
                                        break;
                                    }
                                }
                            }
                            counter++;
                        }

                    }

                }
            }
            return notSatisfied;
        }
        public int SetPrivateState(State PrivateState)
        {
            if (!privateStateToIndex.ContainsKey(PrivateState))
            {
                privateStateToIndex.Add(PrivateState, privateStateToIndex.Count);
                indexToPrivateState.Add(privateStateToIndex.Count - 1, PrivateState);
                return privateStateToIndex.Count - 1;
            }
            else
            {
                return privateStateToIndex[PrivateState];
            }
        }

        public State GetPrivateState(int index)
        {
            return indexToPrivateState[index];
        }

        private bool Contains(HashSet<GroundedPredicate> x, HashSet<GroundedPredicate> y)
        {
            if (y == null)
                return true;
            if (x == null)
            {
                if (y.Count == 0)
                    return true;
                return false;
            }
            foreach (GroundedPredicate gP in y)
            {
                if (!x.Contains(gP)) return false;
            }
            return true;
        }
        private bool Contains(HashSet<GroundedPredicate> x, List<Predicate> y)
        {
            if (y == null)
                return true;
            if (x == null)
            {
                if (y.Count == 0)
                    return true;
                return false;
            }
            foreach (GroundedPredicate gP in y)
            {
                if (!x.Contains(gP)) return false;
            }
            return true;
        }
        private bool Contains(HashSet<Predicate> x, List<Predicate> y)
        {
            if (y == null)
                return true;
            if (x == null)
            {
                if (y.Count == 0)
                    return true;
                return false;
            }
            foreach (GroundedPredicate gP in y)
            {
                if (!x.Contains(gP)) return false;
            }
            return true;
        }
        private bool Contains(HashSet<GroundedPredicate> x, List<GroundedPredicate> y)
        {
            if (y == null)
                return true;
            if (x == null)
            {
                if (y.Count == 0)
                    return true;
                return false;
            }
            foreach (GroundedPredicate gP in y)
            {
                if (!x.Contains(gP)) return false;
            }
            return true;
        }
        private bool Contains(State x, List<Predicate> y)
        {
            if (y == null)
                return true;
            if (x == null)
            {
                if (y.Count == 0)
                    return true;
                return false;
            }
            foreach (GroundedPredicate gP in y)
            {
                if (!x.m_lPredicates.Contains(gP)) return false;
            }
            return true;
        }

        private bool Contains(State x, List<GroundedPredicate> y)
        {
            if (y == null)
                return true;
            if (x == null)
            {
                if (y.Count == 0)
                    return true;
                return false;
            }
            foreach (GroundedPredicate gP in y)
            {
                if (!x.m_lPredicates.Contains(gP)) return false;
            }
            return true;
        }

        private int SatisfyLandmark(HashSet<Predicate> newState, bool[] landmarks, out bool[] notSatisfiedLandmarks)
        {

            int notSatisfied = 0;
            bool f = false;
            notSatisfiedLandmarks = new bool[landmarks.Length];
            for (int i = 0; i < landmarks.Length; i++)
            {
                f = false;
                if (landmarks[i] == false)
                {
                    foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                    {
                        if (newState.Contains(fact))
                        {
                            notSatisfiedLandmarks[i] = true;
                            f = true;
                            break;
                        }

                    }

                    if (!f)
                    {
                        notSatisfiedLandmarks[i] = false;
                        notSatisfied++;
                    }
                }
                else
                {
                    if (publicRelevantLandmark[i].facts.ElementAt(0).Value.Equals("Goal"))
                    {
                        foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                        {
                            if (newState.Contains(fact))
                            {
                                notSatisfiedLandmarks[i] = true;
                                f = true;
                                break;
                            }

                        }

                        if (!f)
                        {
                            notSatisfiedLandmarks[i] = false;
                            notSatisfied++;
                        }

                    }
                    else
                    {
                        notSatisfiedLandmarks[i] = true;
                    }


                }
            }

            bool agein = true;
            while (agein)
            {
                agein = false;
                for (int i = 0; i < notSatisfiedLandmarks.Length; i++)
                {
                    f = false;
                    if (notSatisfiedLandmarks[i] == true)
                    {


                        foreach (Order order in orderList)
                        {
                            if (order.lendmark1 == publicRelevantLandmark[i])
                            {
                                int index = publicRelevantLandmark.IndexOf(order.lendmark2);
                                if (notSatisfiedLandmarks[index] == false)
                                {
                                    foreach (GroundedPredicate fact in publicRelevantLandmark[i].facts.Keys)
                                    {
                                        if (newState.Contains(fact))
                                        {
                                            notSatisfiedLandmarks[i] = true;
                                            f = true;
                                            break;
                                        }

                                    }

                                    if (!f)
                                    {
                                        notSatisfiedLandmarks[i] = false;
                                        notSatisfied++;
                                        agein = true;
                                        break;
                                    }
                                }

                            }
                        }

                    }

                }
            }
            return notSatisfied;
        }



        public Dictionary<MapsVertex, HashSet<MapsVertex>> parentToChildren = new Dictionary<MapsVertex, HashSet<MapsVertex>>();
        HashSet<MacroAction> allMacroActions = new HashSet<MacroAction>();


        bool sendToAll = true;


        public static int counter = 0;

        int minh = 100000;
        VertexComparer vc = new VertexComparer();
        HashSet<MapsVertex> notSended = new HashSet<MapsVertex>();
        HashSet<MacroAction> macroActions = new HashSet<MacroAction>();
        // HashSet<MacroAction> localMacro = new HashSet<MacroAction>();
        public List<string> BeginPlanning()
        {
            try
            {


                courentVertex = null;
                foreach (MapsVertex publicVertex in openLists[name])
                {
                    publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                    bool incloseList = false;
                    bool inOpenList = false;
                    incloseList = closeList.Contains(publicVertex);
                    inOpenList = myOpenList.Contains(publicVertex);
                    if (!incloseList && !inOpenList)
                    {
                        publicVertex.fromOthers = true;
                        myOpenList.Add(publicVertex);
                    }

                }
                if (openLists[name].Count > 0)
                {
                    openLists[name] = new HashSet<MapsVertex>();
                }

                if (!sendToAll)
                {
                    foreach (MapsVertex publicVertex in receivedStates[name])
                    {
                        publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                        bool incloseList = false;
                        bool inOpenList = false;
                        incloseList = closeList.Contains(publicVertex);
                        inOpenList = myOpenList.Contains(publicVertex);
                        if (!incloseList && !inOpenList)
                        {
                            publicVertex.fromOthers = true;
                            myOpenList.Add(publicVertex);
                        }
                    }
                    if (receivedStates[name].Count > 0)
                    {
                        receivedStates[name] = new HashSet<MapsVertex>();
                    }
                }

                if (myOpenList.Count > 0)
                {

                    courentVertex = FindMinByLandmak(myOpenList);
                    //if (courentVertex.h == 10)
                    //     Console.Write("d");
                    if (!sendToAll)
                    {

                        if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                        {
                            Action action = courentVertex.lplan.Last();

                            if (courentVertex.returnTo != null && !action.isGoalAction)
                            {

                                if (MapsPlanner.AgentToInfluActions[name][courentVertex.returnTo[0]].Contains(action))
                                {
                                    SendVertex(courentVertex, courentVertex.returnTo[0]);
                                }

                            }
                            else
                            {
                                SendVertex(courentVertex, action);
                            }
                        }
                        //if (courentVertex.lplan.Count > 0 && (courentVertex.fromOthers || courentVertex.lplan.Last().isDeletePublic) && courentVertex.lplan.Last().isPublic && !courentVertex.lplan.Last().isGoalAction)
                        if (courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic && !courentVertex.lplan.Last().isGoalAction)
                        {
                            if (courentVertex.fromOthers)
                            {
                                SendVertexToInf(courentVertex, courentVertex.lplan.Last());
                            }
                            else
                            {
                                if (courentVertex.lplan.Last().isDeletePublic)
                                {
                                    SendVertexToInf2(courentVertex, courentVertex.lplan.Last());
                                }
                            }
                            //  if(courentVertex.lplan.Last().isDeletePublic)
                            //    Console.WriteLine("dd");
                        }
                    }
                    else
                    {
                        if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                        {
                            //SendVertexToAll(courentVertex);
                            bool flag = true;
                            if (myOpenList.Contains(courentVertex, vc))
                            {
                                flag = false;
                                Program.notSendedStates++;
                                notSended.Add(courentVertex);
                            }
                            else
                            if (closeList.Contains(courentVertex, vc))
                            {
                                flag = false;
                                Program.notSendedStates++;
                                notSended.Add(courentVertex);
                            }
                            if (flag)
                                SendVertexToAll(courentVertex);
                        }
                    }


                    Program.StateExpendCounter++;
                    //    if (name.Contains("2")&& courentVertex.h==5)
                    //      Console.Write(" ");
                    closeList.Add(courentVertex);

                    if (courentVertex.h == 0)
                    {
                        if (courentVertex.IsGoal(allGoal))
                        {
                            Program.StartHighLevelPlanning = DateTime.Now;

                            Console.WriteLine("***************************** ");

                            // Console.WriteLine("massageEffCounter: "+MapsPlanner.massageEffCounter);
                            //Console.WriteLine("massagePreCounter: " + MapsPlanner.massagePreCounter);
                            List<Action> allActions = new List<Action>();
                            foreach (Action act in courentVertex.lplan)
                            {
                                if (act is MacroAction)
                                {
                                    Program.countMacro++;
                                    Program.countAvgPerMacro += ((MacroAction)act).microActions.Count;
                                }
                            }
                            Program.countAvgPerMacro = Program.countAvgPerMacro / Program.countMacro;
                            relaxActions(allActions, courentVertex.lplan);
                            Program.countActions.Add(courentVertex.lplan.Count);
                            Program.actionSum += courentVertex.lplan.Count;
                            List<string> lplan = new List<string>();
                            foreach (Action act in allActions)
                                lplan.Add(act.Name);
                            return lplan;
                        }
                        else
                        {
                            Console.WriteLine("****");
                        }
                    }

                    List<Action> addMacroActions = new List<Action>();
                    foreach (Action action in m_actions)
                    {
                        MapsVertex newVertex = courentVertex.Aplly(action);
                        if (newVertex != null)
                        {

                            newVertex.returnTo = courentVertex.returnTo;
                            bool inlClose = closeList.Contains(newVertex);
                            bool inlOpen = myOpenList.Contains(newVertex);
                            if (!inlClose && !inlOpen)
                            {

                                if (newVertex.h < minh)
                                {
                                    minh = newVertex.h;
                                    Console.Write(minh + "  ");
                                }

                                myOpenList.Add(newVertex);

                            }
                        }
                    }
                    m_actions.AddRange(addMacroActions);
                }
                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return null;
            }
        }

        HashSet<MapsVertex> myPreferableOpenList = null;
        public int GetCountOfPreferableList()
        {
            return myPreferableOpenList.Count;
        }
        int PreferableCounter = 1;

        bool firstIteration = true;
        bool firstIt;
        public static bool thereIsPrivate;

        public bool openIsEmpty()
        {
            return openLists[name].Count == 0 && myPreferableOpenList.Count == 0 && myOpenList.Count == 0;
        }

        public List<string> BeginPreferablePlanning()
        {
            try
            {

                courentVertex = null;
                foreach (MapsVertex publicVertex in openLists[name])
                {
                    Program.cancellationTokenSource.Token.ThrowIfCancellationRequested();
                    publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                    bool incloseList = false;
                    bool inOpenList = false;
                    incloseList = closeList.Contains(publicVertex);
                    inOpenList = myOpenList.Contains(publicVertex);
                    inOpenList = inOpenList && myPreferableOpenList.Contains(publicVertex);
                    if (!incloseList && !inOpenList)
                    {
                        publicVertex.fromOthers = true;
                        publicVertex.changingAgent = true;
                        /*
                        MacroAction newAct = new MacroAction(publicVertex.publicParent, publicVertex);
                        if (!macroActions.Contains(newAct))
                        {
                            macroActions.Add(newAct);
                            //m_actions.Add(newAct);
                        }
                        */
                        if (publicVertex.isPreferable)
                        {
                            myPreferableOpenList.Add(publicVertex);
                        }
                        else
                        {
                            myOpenList.Add(publicVertex);
                        }
                    }

                }
                if (openLists[name].Count > 0)
                {
                    openLists[name] = new HashSet<MapsVertex>();
                }

                if (!sendToAll)
                {
                    foreach (MapsVertex publicVertex in receivedStates[name])
                    {
                        publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                        bool incloseList = false;
                        bool inOpenList = false;

                        incloseList = closeList.Contains(publicVertex);
                        inOpenList = myOpenList.Contains(publicVertex);
                        inOpenList = inOpenList && myPreferableOpenList.Contains(publicVertex);
                        if (!incloseList && !inOpenList)
                        {
                            publicVertex.fromOthers = true;
                            publicVertex.changingAgent = true;
                            if (publicVertex.isPreferable)
                            {
                                myPreferableOpenList.Add(publicVertex);
                            }
                            else
                            {
                                myOpenList.Add(publicVertex);
                            }
                        }
                    }
                    if (receivedStates[name].Count > 0)
                    {
                        receivedStates[name] = new HashSet<MapsVertex>();
                    }
                }
                if (myOpenList.Count == 0 && notSended.Count > 0 && myPreferableOpenList.Count == 0)
                {
                    foreach (MacroAction ma in macroActions)
                    {
                        foreach (MapsVertex mv in notSended)
                        {

                            MapsVertex newMv = mv.Aplly(ma);
                            if (newMv != null)
                            {
                                bool incloseList = closeList.Contains(newMv);
                                bool inOpenList = myOpenList.Contains(newMv);
                                if (!incloseList && !inOpenList)
                                {
                                    myOpenList.Add(newMv);
                                }
                            }
                        }
                    }
                }


                int old_h = 0;
                PreferableCounter = 1000;
                if (myOpenList.Count > 0 || myPreferableOpenList.Count > 0)
                {
                    if ((myOpenList.Count == 0 || PreferableCounter > 0) && myPreferableOpenList.Count > 0)
                    {
                        courentVertex = FindMinByLandmak(myPreferableOpenList);
                        // old_h = courentVertex.ComputeFF_h();
                        if (Program.projectionVersion == Program.ProjectionVersion.fullGlobal)
                        {
                            //  courentVertex.GetProjection_h();
                        }

                        if (Program.projectionVersion == Program.ProjectionVersion.ProjectionFF)
                        {
                            //  PreferableCounter = 1000;
                            if (!courentVertex.changingAgent)
                            {
                                courentVertex.GetProjection_h();
                            }
                            else
                            {
                                // if(thereIsPrivate)
                                {
                                    courentVertex.GetProjection_h();
                                }
                            }
                            //   if (courentVertex.h != old_h)
                            //       Console.WriteLine("ddd");
                        }

                        if (Program.projectionVersion == Program.ProjectionVersion.Global)
                        {
                            PreferableCounter = 10000;
                            if (courentVertex.changingAgent)
                                courentVertex.FindLocalPlan();
                        }
                        if (Program.projectionVersion == Program.ProjectionVersion.GlobalV2)
                        {
                            PreferableCounter = 10000;
                            if (courentVertex.changingAgent)
                                courentVertex.FindLocalPlan();
                        }
                        if (courentVertex.h < minh)
                        {
                            PreferableCounter += 1000;
                            minh = courentVertex.h;
                            // if (minh==0)
                            Console.Write(minh + "  ");
                        }
                        PreferableCounter--;
                    }
                    else
                    {
                        // if (Program.projectionVersion != Program.ProjectionVersion.ProjectionFF)
                        if (true) // global prefer operator
                        {
                            if (Program.projectionVersion == Program.ProjectionVersion.Global)
                            {
                                if (MapsAgent.preferFlags.Values.Contains(true))
                                    return null;
                            }
                            else
                            {
                                if (MapsAgent.preferFlags.Values.Contains(true) && !firstIt)
                                    return null;
                            }
                        }
                        firstIt = false;
                        courentVertex = FindMinByLandmak(myOpenList);
                        //old_h = courentVertex.ComputeFF_h();
                        if (Program.projectionVersion == Program.ProjectionVersion.ProjectionFF)
                        {
                            if (!courentVertex.changingAgent)
                            {
                                courentVertex.GetProjection_h();
                            }
                            else
                            {
                                //if (thereIsPrivate)
                                {
                                    courentVertex.GetProjection_h();
                                }
                            }
                        }
                        else
                            courentVertex.GetProjection_h();
                        //if (courentVertex.h != old_h)
                        //    Console.WriteLine("ddd");
                        if (courentVertex.h < minh)
                        {
                            minh = courentVertex.h;
                            //  if (minh == 0)
                            Console.Write(minh + "  ");
                        }
                        PreferableCounter++;
                    }

                    /* if (courentVertex.h >= int.MaxValue / 2)
                     {
                         return null;
                     }*/


                    //if (courentVertex.h < old_h-1&& old_h!=1000)
                    //    Console.Write("d");
                    if (!sendToAll)
                    {
                        if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                        {
                            Action action = courentVertex.lplan.Last();

                            if (courentVertex.returnTo != null && !action.isGoalAction)
                            {

                                if (MapsPlanner.AgentToInfluActions[name][courentVertex.returnTo[0]].Contains(action))
                                {
                                    SendVertex(courentVertex, courentVertex.returnTo[0]);
                                }

                            }
                            else
                            {
                                SendVertex(courentVertex, action);
                            }
                        }
                        //if (courentVertex.lplan.Count > 0 && (courentVertex.fromOthers || courentVertex.lplan.Last().isDeletePublic) && courentVertex.lplan.Last().isPublic && !courentVertex.lplan.Last().isGoalAction)
                        if (courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic && !courentVertex.lplan.Last().isGoalAction)
                        {
                            if (courentVertex.fromOthers)
                            {
                                SendVertexToInf(courentVertex, courentVertex.lplan.Last());
                            }
                            else
                            {
                                if (courentVertex.lplan.Last().isDeletePublic)
                                {
                                    SendVertexToInf2(courentVertex, courentVertex.lplan.Last());
                                }
                            }
                            //  if(courentVertex.lplan.Last().isDeletePublic)
                            //    Console.WriteLine("dd");
                        }
                    }
                    else
                    {
                        if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                        {
                            //SendVertexToAll(courentVertex);
                            bool flag = true;
                            bool sendingRealStartState = false;

                            /*
                             * This is for sending only states that are different in their public reflection.
                             * If there is a state that we already sent that has the same public reflection as this state,
                             * don't send this state. We will remove this for now and return to it later if we see it is needed.
                             * We can come to this later by saying as if this vertex has the "vertex.traceStateForPublicRevealedState"
                             * of his father, this way it will make it's childern to put their iparent as their grandfather's iparent.
                            if (closeList.Contains(courentVertex, vc))
                            {
                                flag = false;
                            }
                            */

                            if (flag)
                            {
                                flag = MapsPlanner.MAFSPublisher.CanPublish(this, courentVertex);
                                if (flag)
                                {
                                    courentVertex.h_when_sent = courentVertex.h;
                                    MapsPlanner.tracesHandler.publishState(courentVertex, this);
                                    //Handle i-parent dictionary:
                                    courentVertex.agent2iparentVertex = new Dictionary<string, MapsVertex>(courentVertex.publicParent.agent2iparentVertex);
                                    HandleIParent(courentVertex, this);
                                    courentVertex.senderAgent = this.name;
                                    if (courentVertex.lplan.Last().Name.Contains("turn-to-regular-actions-stage"))
                                    {
                                        realStartStateVertex = courentVertex;

                                        if (MapsPlanner.tracesHandler.usesRealStartState())
                                        {
                                            int startStateID = TraceState.GetNextStateID();
                                            Dictionary<string, int> iparents = new Dictionary<string, int>();
                                            MapsPlanner.tracesHandler.publishRealStartState(this, courentVertex, startStateID, iparents);                                          
                                        }
                                        sendingRealStartState = true;
                                    }
                                }
                            }

                            if (!flag)
                            {
                                //courentVertex.agent2iparentVertex = courentVertex.publicParent.agent2iparentVertex;
                                courentVertex.agent2iparent = courentVertex.publicParent.agent2iparent;
                                courentVertex.traceStateForPublicRevealedState = courentVertex.publicParent.traceStateForPublicRevealedState;
                                // not sending...
                                Program.notSendedStates++;
                                //notSended.Add(courentVertex);
                                
                                //Skip the expansion of this vertex:
                                closeList.Add(courentVertex);
                                goto done_outer_if;
                            }

                            if (flag && !MapsPlanner.directMessage)
                                SendVertexToAllAgentOnNextListUse(courentVertex, sendingRealStartState);
                            else
                            {
                                if (flag && MapsPlanner.directMessage)
                                    SendVertexToAll(courentVertex);
                            }
                        }
                    }


                    Program.StateExpendCounter++;
                    //    if (name.Contains("2")&& courentVertex.h==5)
                    //      Console.Write(" ");
                    closeList.Add(courentVertex);
                    if (courentVertex.h == 1)
                    {
                        //courentVertex.GetProjection_h();
                        //Console.Write("dd");
                    }
                    if (courentVertex.h == 0)
                    {
                        if (courentVertex.IsGoal(allGoal))
                        {
                            if (courentVertex.h != 0)
                                Console.WriteLine("chack this");
                            Program.StartHighLevelPlanning = DateTime.Now;

                            Console.WriteLine("***************************** ");

                            // Console.WriteLine("massageEffCounter: "+MapsPlanner.massageEffCounter);
                            //Console.WriteLine("massagePreCounter: " + MapsPlanner.massagePreCounter);
                            List<Action> allActions = new List<Action>();
                            foreach (Action act in courentVertex.lplan)
                            {
                                if (act is MacroAction)
                                {
                                    Program.countMacro++;
                                    Program.countAvgPerMacro += ((MacroAction)act).microActions.Count;
                                }
                            }
                            Program.countAvgPerMacro = Program.countAvgPerMacro / Program.countMacro;
                            relaxActions(allActions, courentVertex.lplan);
                            Program.countActions.Add(courentVertex.lplan.Count);
                            Program.actionSum += courentVertex.lplan.Count;
                            List<string> lplan = new List<string>();
                            List<string> highLevelPlan = new List<string>();
                            foreach (Action act in allActions)
                            {
                                lplan.Add(act.Name);
                                if (act.isPublic)
                                {
                                    highLevelPlan.Add(act.Name);
                                }
                            }
                            MapsPlanner.highLevelPlan = highLevelPlan;
                            MapsPlanner.tracesHandler.PublishGoalState(courentVertex, this);

                            return lplan;
                        }
                        else
                        {
                            //   Console.WriteLine("****");
                        }
                    }

                    //  List<Action> addMacroActions = new List<Action>();
                    // bool chack = false;
                    foreach (Action action in m_actions)
                    {
                        MapsVertex newVertex = courentVertex.Aplly(action);

                        if (newVertex != null)
                        {
                            //    chack = true;
                            newVertex.returnTo = courentVertex.returnTo;
                            bool inlClose = closeList.Contains(newVertex);
                            bool inlOpen = myOpenList.Contains(newVertex);
                            inlOpen = inlOpen && myPreferableOpenList.Contains(newVertex);
                            if (!inlClose && !inlOpen)
                            {
                                if (newVertex.isPreferable)// && newVertex.relaxPlan.Count>0)
                                {
                                    // newVertex.GetProjection_h();
                                    myPreferableOpenList.Add(newVertex);
                                }
                                else
                                {
                                    myOpenList.Add(newVertex);
                                }
                            }
                        }
                    }
                    // if (!chack)
                    //    Console.Write("DD");
                    // m_actions.AddRange(addMacroActions);
                }

                //This is for skipping the expansion of states that shouldn't be expanded or revieled to the other agents:
                done_outer_if:

                if (myPreferableOpenList.Count > 0)
                    MapsAgent.preferFlags[name] = true;
                else
                {
                    MapsAgent.preferFlags[name] = false;
                }
                return null;
            }
            catch (System.Threading.ThreadAbortException taex)
            {
                //Don't print stack trace, because it just makes it look bad...
                Console.WriteLine(); //Go one line down so the heuristics will not disturb the "failed" printout
                return null;
            }
            catch(OperationCanceledException cancellationEx)
            {
                //Don't print stack trace, because it just makes it look bad...
                Console.WriteLine(); //Go one line down so the heuristics will not disturb the "failed" printout
                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return null;
            }
        }

        private void HandleIParent(MapsVertex courentVertex, MapsAgent mapsAgent)
        {
            // check if the public parent of this vertex is the i-parent of it (sent by the current agent - or it is the start state...)
            if(courentVertex.publicParent.senderAgent == mapsAgent.name || courentVertex.publicParent == startVertexForTrace)
            {
                // if it is, then update the i-parent of this state to be the public parent of this state
                courentVertex.agent2iparentVertex[mapsAgent.name] = courentVertex.publicParent;
            }
            else
            {
                // if it is not, then the i-parent of this state is the same as the public parent's state
                courentVertex.agent2iparentVertex[mapsAgent.name] = courentVertex.publicParent.agent2iparentVertex[mapsAgent.name];
            }
        }

        public List<string> BeginPreferableFFPlanning()
        {
            try
            {
                MapsAgent.preferFlags[name] = false;
                courentVertex = null;
                foreach (MapsVertex publicVertex in openLists[name])
                {
                    publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                    bool incloseList = false;
                    bool inOpenList = false;
                    incloseList = closeList.Contains(publicVertex);
                    inOpenList = myOpenList.Contains(publicVertex);
                    inOpenList = inOpenList && myPreferableOpenList.Contains(publicVertex);
                    if (!incloseList && !inOpenList)
                    {
                        publicVertex.fromOthers = true;
                        publicVertex.changingAgent = true;
                        MacroAction newAct = new MacroAction(publicVertex.publicParent, publicVertex);
                        if (!macroActions.Contains(newAct))
                        {
                            macroActions.Add(newAct);
                            //m_actions.Add(newAct);
                        }
                        if (publicVertex.isPreferable)
                        {
                            myPreferableOpenList.Add(publicVertex);
                        }
                        else
                        {
                            myOpenList.Add(publicVertex);
                        }
                    }

                }
                if (openLists[name].Count > 0)
                {
                    openLists[name] = new HashSet<MapsVertex>();
                }

                if (!sendToAll)
                {
                    foreach (MapsVertex publicVertex in receivedStates[name])
                    {
                        publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                        bool incloseList = false;
                        bool inOpenList = false;

                        incloseList = closeList.Contains(publicVertex);
                        inOpenList = myOpenList.Contains(publicVertex);
                        inOpenList = inOpenList && myPreferableOpenList.Contains(publicVertex);
                        if (!incloseList && !inOpenList)
                        {
                            publicVertex.fromOthers = true;
                            publicVertex.changingAgent = true;
                            if (publicVertex.isPreferable)
                            {
                                myPreferableOpenList.Add(publicVertex);
                            }
                            else
                            {
                                myOpenList.Add(publicVertex);
                            }
                        }
                    }
                    if (receivedStates[name].Count > 0)
                    {
                        receivedStates[name] = new HashSet<MapsVertex>();
                    }
                }
                if (myOpenList.Count == 0 && notSended.Count > 0 && myPreferableOpenList.Count == 0)
                {
                    foreach (MacroAction ma in macroActions)
                    {
                        foreach (MapsVertex mv in notSended)
                        {

                            MapsVertex newMv = mv.Aplly(ma);
                            if (newMv != null)
                            {
                                bool incloseList = closeList.Contains(newMv);
                                bool inOpenList = myOpenList.Contains(newMv);
                                if (!incloseList && !inOpenList)
                                {
                                    myOpenList.Add(newMv);
                                }
                            }
                        }
                    }
                }
                int old_h = 0;
                PreferableCounter = 1000;
                if (myOpenList.Count > 0 || myPreferableOpenList.Count > 0)
                {
                    if ((myOpenList.Count == 0 || PreferableCounter > 0) && myPreferableOpenList.Count > 0)
                    {
                        courentVertex = FindMinByLandmak(myPreferableOpenList);
                        old_h = courentVertex.h;
                        if (!courentVertex.changingAgent)
                            courentVertex.h = courentVertex.ComputeFF_h();
                        if (courentVertex.h < minh)
                        {
                            PreferableCounter += 1000;
                            minh = courentVertex.h;
                            Console.Write(minh + "  ");
                        }
                        PreferableCounter--;
                    }
                    else
                    {
                        if (true)
                        {
                            if (MapsAgent.preferFlags.Values.Contains(true) && !firstIt)
                                return null;
                        }
                        firstIt = false;
                        courentVertex = FindMinByLandmak(myOpenList);
                        old_h = courentVertex.h;
                        if (!courentVertex.changingAgent)
                            courentVertex.h = courentVertex.ComputeFF_h();

                        if (courentVertex.h < minh)
                        {
                            minh = courentVertex.h;
                            Console.Write(minh + "  ");
                        }
                        PreferableCounter++;
                    }

                    if (!sendToAll)
                    {
                        if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                        {
                            Action action = courentVertex.lplan.Last();

                            if (courentVertex.returnTo != null && !action.isGoalAction)
                            {

                                if (MapsPlanner.AgentToInfluActions[name][courentVertex.returnTo[0]].Contains(action))
                                {
                                    SendVertex(courentVertex, courentVertex.returnTo[0]);
                                }

                            }
                            else
                            {
                                SendVertex(courentVertex, action);
                            }
                        }

                        if (courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic && !courentVertex.lplan.Last().isGoalAction)
                        {
                            if (courentVertex.fromOthers)
                            {
                                SendVertexToInf(courentVertex, courentVertex.lplan.Last());
                            }
                            else
                            {
                                if (courentVertex.lplan.Last().isDeletePublic)
                                {
                                    SendVertexToInf2(courentVertex, courentVertex.lplan.Last());
                                }
                            }
                        }
                    }
                    else
                    {
                        if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                        {
                            bool flag = true;

                            if (closeList.Contains(courentVertex, vc))
                            {
                                flag = false;
                                Program.notSendedStates++;
                                notSended.Add(courentVertex);
                            }

                            if (flag && !MapsPlanner.directMessage)
                                SendVertexToAllAgentOnNextListUse(courentVertex, false);
                            else
                            {
                                if (flag && MapsPlanner.directMessage)
                                    SendVertexToAll(courentVertex);
                            }
                        }
                    }


                    Program.StateExpendCounter++;
                    closeList.Add(courentVertex);
                    if (courentVertex.h == 0)
                    {
                        if (courentVertex.IsGoal(allGoal))
                        {
                            if (courentVertex.h != 0)
                                Console.WriteLine("chack this");
                            Program.StartHighLevelPlanning = DateTime.Now;

                            Console.WriteLine("***************************** ");

                            // Console.WriteLine("massageEffCounter: "+MapsPlanner.massageEffCounter);
                            //Console.WriteLine("massagePreCounter: " + MapsPlanner.massagePreCounter);
                            List<Action> allActions = new List<Action>();
                            foreach (Action act in courentVertex.lplan)
                            {
                                if (act is MacroAction)
                                {
                                    Program.countMacro++;
                                    Program.countAvgPerMacro += ((MacroAction)act).microActions.Count;
                                }
                            }
                            Program.countAvgPerMacro = Program.countAvgPerMacro / Program.countMacro;
                            relaxActions(allActions, courentVertex.lplan);
                            Program.countActions.Add(courentVertex.lplan.Count);
                            Program.actionSum += courentVertex.lplan.Count;
                            List<string> lplan = new List<string>();
                            foreach (Action act in allActions)
                                lplan.Add(act.Name);
                            return lplan;
                        }
                        else
                        {
                            //   Console.WriteLine("****");
                        }
                    }

                    List<Action> addMacroActions = new List<Action>();
                    foreach (Action action in m_actions)
                    {
                        MapsVertex newVertex = courentVertex.Aplly(action);
                        if (newVertex != null)
                        {

                            newVertex.returnTo = courentVertex.returnTo;
                            bool inlClose = closeList.Contains(newVertex);
                            bool inlOpen = myOpenList.Contains(newVertex);
                            inlOpen = inlOpen && myPreferableOpenList.Contains(newVertex);
                            if (!inlClose && !inlOpen)
                            {
                                if (newVertex.isPreferable)
                                {
                                    //newVertex.h = newVertex.ComputeFF_h();
                                    myPreferableOpenList.Add(newVertex);
                                }
                                else
                                {
                                    myOpenList.Add(newVertex);
                                }
                            }
                        }
                    }
                    m_actions.AddRange(addMacroActions);
                }
                if (myPreferableOpenList.Count > 0)
                    MapsAgent.preferFlags[name] = true;
                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return null;
            }

        }
        public void BeginDistrebutedPreferablePlanning()
        {
            MapsVertex courentVertex = null;
            /* if (firstIteration)
             {

                 courentVertex = FindMinByLandmak(myOpenList);
                 MapsPlanner.tmpMutex.WaitOne();
                 // MapsPlanner.heursticCalcultionMutex.WaitOne();          
                 courentVertex.GetProjection_h();
                 // MapsPlanner.heursticCalcultionMutex.ReleaseMutex();
                 MapsPlanner.tmpMutex.ReleaseMutex();
                 if (courentVertex.h < minh)
                 {
                     minh = courentVertex.h;
                     Console.Write(minh + "  ");
                 }
             }*/
            while (!MapsPlanner.findGoal)
            {

                try
                {


                    /*  tmpMutex.WaitOne();
                      foreach (MapsVertex publicVertex in openLists[name])
                      {
                          publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                          bool incloseList = false;
                          bool inOpenList = false;
                          incloseList = closeList.Contains(publicVertex);
                          inOpenList = myOpenList.Contains(publicVertex);
                          inOpenList = inOpenList && myPreferableOpenList.Contains(publicVertex);
                          if (!incloseList && !inOpenList)
                          {
                              publicVertex.fromOthers = true;
                              publicVertex.changingAgent = true;
                              MacroAction newAct = new MacroAction(publicVertex.publicParent, publicVertex);
                              if (!macroActions.Contains(newAct))
                              {
                                  macroActions.Add(newAct);
                                  //m_actions.Add(newAct);
                              }
                              if (publicVertex.isPreferable)
                              {
                                  myPreferableOpenList.Add(publicVertex);
                              }
                              else
                              {
                                  myOpenList.Add(publicVertex);
                              }
                          }

                      }
                      if (openLists[name].Count > 0)
                      {
                          openLists[name] = new HashSet<MapsVertex>();
                      }

                      tmpMutex.ReleaseMutex();*/

                    /*  if (!sendToAll)
                      {
                          foreach (MapsVertex publicVertex in receivedStates[name])
                          {
                              publicVertex.ChangeAgent(name, orderList, publicRelevantLandmark, ReasonableOrdering);
                              bool incloseList = false;
                              bool inOpenList = false;

                              incloseList = closeList.Contains(publicVertex);
                              inOpenList = myOpenList.Contains(publicVertex);
                              inOpenList = inOpenList && myPreferableOpenList.Contains(publicVertex);
                              if (!incloseList && !inOpenList)
                              {
                                  publicVertex.fromOthers = true;
                                  publicVertex.changingAgent = true;
                                  if (publicVertex.isPreferable)
                                  {
                                      myPreferableOpenList.Add(publicVertex);
                                  }
                                  else
                                  {
                                      myOpenList.Add(publicVertex);
                                  }
                              }
                          }
                          if (receivedStates[name].Count > 0)
                          {
                              receivedStates[name] = new HashSet<MapsVertex>();
                          }
                      }

                      if (myOpenList.Count == 0 && notSended.Count > 0 && myPreferableOpenList.Count == 0)
                      {
                          foreach (MacroAction ma in localMacro)
                          {
                              foreach (MapsVertex mv in notSended)
                              {

                                  MapsVertex newMv = mv.Aplly(ma);
                                  if (newMv != null)
                                  {
                                      bool incloseList = closeList.Contains(newMv);
                                      bool inOpenList = myOpenList.Contains(newMv);
                                      if (!incloseList && !inOpenList)
                                      {
                                          myOpenList.Add(newMv);
                                      }
                                  }
                              }
                          }
                      }
                      */
                    int old_h = 0;
                    if (name.Contains("4"))
                        Console.WriteLine("stop");
                    if (myOpenList.Count > 0 || myPreferableOpenList.Count > 0)
                    {

                        if ((myOpenList.Count == 0 || PreferableCounter > 0) && myPreferableOpenList.Count > 0)
                        {
                            // MapsPlanner.heursticCalcultionMutex.WaitOne();
                            courentVertex = FindMinByLandmak(myPreferableOpenList);
                            // MapsPlanner.heursticCalcultionMutex.ReleaseMutex();
                            old_h = courentVertex.h;
                            if (Program.projectionVersion == Program.ProjectionVersion.Local)
                            {
                                if (courentVertex.localPlan == null)
                                {
                                    heursticCalcultionMutex.WaitOne();
                                    courentVertex.GetProjection_h();
                                    heursticCalcultionMutex.ReleaseMutex();
                                }
                            }
                            if (Program.projectionVersion == Program.ProjectionVersion.Global)
                            {
                                if (courentVertex.changingAgent)
                                {
                                    heursticCalcultionMutex.WaitOne();
                                    courentVertex.GetProjection_h();
                                    heursticCalcultionMutex.ReleaseMutex();
                                }
                                //courentVertex.GroundMyLocal();
                            }
                            if (courentVertex.h < minh)
                            {
                                PreferableCounter += 1000;
                                minh = courentVertex.h;
                                // Console.Write(minh + "  ");
                            }
                            PreferableCounter--;

                        }
                        else
                        {


                            courentVertex = FindMinByLandmak(myOpenList);
                            old_h = courentVertex.h;
                            Console.WriteLine("Try to Enter: " + name);
                            heursticCalcultionMutex.WaitOne();
                            Console.WriteLine("Enter: " + name);
                            courentVertex.GetProjection_h();
                            heursticCalcultionMutex.ReleaseMutex();
                            Console.WriteLine("Exit: " + name);
                            if (courentVertex.h < minh)
                            {
                                minh = courentVertex.h;
                                // Console.Write(minh + "  ");
                            }
                            PreferableCounter++;

                        }



                        if (courentVertex.h >= int.MaxValue / 2)
                        {
                            continue;
                        }

                        if (name.Contains("4"))
                            Console.WriteLine("stop");


                        /*if (!sendToAll)
                        {
                            if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                            {
                                Action action = courentVertex.lplan.Last();

                                if (courentVertex.returnTo != null && !action.isGoalAction)
                                {

                                    if (MapsPlanner.AgentToInfluActions[name][courentVertex.returnTo[0]].Contains(action))
                                    {
                                        SendVertex(courentVertex, courentVertex.returnTo[0]);
                                    }

                                }
                                else
                                {
                                    SendVertex(courentVertex, action);
                                }
                            }
                            //if (courentVertex.lplan.Count > 0 && (courentVertex.fromOthers || courentVertex.lplan.Last().isDeletePublic) && courentVertex.lplan.Last().isPublic && !courentVertex.lplan.Last().isGoalAction)
                            if (courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic && !courentVertex.lplan.Last().isGoalAction)
                            {
                                if (courentVertex.fromOthers)
                                {
                                    SendVertexToInf(courentVertex, courentVertex.lplan.Last());
                                }
                                else
                                {
                                    if (courentVertex.lplan.Last().isDeletePublic)
                                    {
                                        SendVertexToInf2(courentVertex, courentVertex.lplan.Last());
                                    }
                                }
                                //  if(courentVertex.lplan.Last().isDeletePublic)
                                //    Console.WriteLine("dd");
                            }
                        }
                        else
                        {
                            if (!courentVertex.fromOthers && courentVertex.lplan.Count > 0 && courentVertex.lplan.Last().isPublic)
                            {
                                //SendVertexToAll(courentVertex);
                                bool flag = true;
                                if (myOpenList.Contains(courentVertex, vc) || myPreferableOpenList.Contains(courentVertex, vc))
                                {
                                    flag = false;
                                    Program.notSendedStates++;
                                    notSended.Add(courentVertex);
                                }
                                else
                                {
                                    if (closeList.Contains(courentVertex, vc))
                                    {
                                        flag = false;
                                        Program.notSendedStates++;
                                        notSended.Add(courentVertex);
                                    }
                                }
                                if (flag)
                                {                                 
                                    SendVertexToAllLockFirst(courentVertex);
                                }
                            }
                        }*/


                        Program.StateExpendCounter++;
                        //    if (name.Contains("2")&& courentVertex.h==5)
                        //      Console.Write(" ");
                        closeList.Add(courentVertex);
                        if (courentVertex.h == 1)
                        {
                            //courentVertex.GetProjection_h();
                            //Console.Write("dd");
                        }

                        if (courentVertex.h == 0)
                        {
                            if (courentVertex.IsGoal(allGoal))
                            {
                                //MapsPlanner.goalChackMutex.WaitOne();
                                if (MapsPlanner.findGoal == true)
                                {
                                    //   MapsPlanner.goalChackMutex.ReleaseMutex();
                                    return;
                                }
                                else
                                {
                                    MapsPlanner.findGoal = true;
                                    //    MapsPlanner.goalChackMutex.ReleaseMutex();
                                }
                                if (courentVertex.h != 0)
                                    Console.WriteLine("chack this");
                                Program.StartHighLevelPlanning = DateTime.Now;

                                Console.WriteLine("***************************** ");

                                // Console.WriteLine("massageEffCounter: "+MapsPlanner.massageEffCounter);
                                //Console.WriteLine("massagePreCounter: " + MapsPlanner.massagePreCounter);
                                List<Action> allActions = new List<Action>();
                                foreach (Action act in courentVertex.lplan)
                                {
                                    if (act is MacroAction)
                                    {
                                        Program.countMacro++;
                                        Program.countAvgPerMacro += ((MacroAction)act).microActions.Count;
                                    }
                                }
                                Program.countAvgPerMacro = Program.countAvgPerMacro / Program.countMacro;
                                relaxActions(allActions, courentVertex.lplan);
                                Program.countActions.Add(courentVertex.lplan.Count);
                                Program.actionSum += courentVertex.lplan.Count;
                                List<string> lplan = new List<string>();
                                foreach (Action act in allActions)
                                    lplan.Add(act.Name);
                                MapsPlanner.finalPlan = lplan;
                            }
                            else
                            {
                                //   Console.WriteLine("****");
                            }
                        }

                        List<Action> addMacroActions = new List<Action>();
                        foreach (Action action in m_actions)
                        {
                            MapsVertex newVertex = courentVertex.Aplly(action);
                            if (newVertex != null)
                            {

                                newVertex.returnTo = courentVertex.returnTo;
                                bool inlClose = closeList.Contains(newVertex);
                                bool inlOpen = myOpenList.Contains(newVertex);
                                inlOpen = inlOpen && myPreferableOpenList.Contains(newVertex);
                                if (!inlClose && !inlOpen)
                                {
                                    if (newVertex.isPreferable)
                                    {
                                        myPreferableOpenList.Add(newVertex);
                                    }
                                    else
                                    {
                                        myOpenList.Add(newVertex);
                                    }
                                }
                            }
                        }

                        //m_actions.AddRange(addMacroActions);
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                }


            }

            Console.WriteLine("***********************");
        }


        public void SendVertexToInf(MapsVertex mv, Action lastAction)
        {
            try
            {
                List<string> sendingTo = new List<string>();
                foreach (string agentName in MapsPlanner.influencedByAgents[name].ToList())
                {
                    if (mv.shareWith != null && mv.shareWith.Contains(agentName))
                        continue;
                    sendingTo.Add(agentName);
                }
                for (int i = 0; i < sendingTo.Count; i++)
                {
                    //  if (lastAction==null || !MapsPlanner.actionMap[lastAction.Name].Contains(agentName))
                    {

                        string agentName = sendingTo[i];
                        if (mv.returnTo != null && mv.returnTo.Contains(agentName))
                            continue;
                        MapsPlanner.massagePreCounter++;
                        Program.sendedStateCounter++;
                        MapsVertex sendingVertex = new MapsVertex(mv);
                        sendingVertex.fullCopy(mv);
                        if (mv.returnTo != null)
                            sendingVertex.returnTo = new List<string>(mv.returnTo);
                        else
                        {
                            sendingVertex.returnTo = new List<string>();
                        }
                        sendingVertex.returnTo.Insert(0, name);
                        //sendingVertex.returnTo = name;
                        if (mv.shareWith != null)
                            sendingVertex.shareWith = new HashSet<string>(mv.shareWith);
                        else
                            sendingVertex.shareWith = new HashSet<string>();

                        for (int j = 0; j < sendingTo.Count; j++)
                        {
                            sendingVertex.shareWith.Add(sendingTo[j]);
                        }
                        sendingVertex.shareWith.Add(name);
                        if (!receivedStates[agentName].Contains(sendingVertex))
                        {
                            receivedStates[agentName].Add(sendingVertex);
                            Program.messages++;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        public void SendVertexToInf2(MapsVertex mv, Action lastAction)
        {
            try
            {
                List<string> sendingTo = new List<string>();
                foreach (string agentName in MapsPlanner.recoverActionEffect[name][lastAction.Name])
                {
                    if (mv.shareWith != null && mv.shareWith.Contains(agentName))
                        continue;
                    sendingTo.Add(agentName);
                }
                for (int i = 0; i < sendingTo.Count; i++)
                {
                    //  if (lastAction==null || !MapsPlanner.actionMap[lastAction.Name].Contains(agentName))
                    {

                        string agentName = sendingTo[i];
                        if (mv.returnTo != null && mv.returnTo.Contains(agentName))
                            continue;
                        MapsPlanner.massagePreCounter++;
                        Program.sendedStateCounter++;
                        MapsVertex sendingVertex = new MapsVertex(mv);
                        sendingVertex.fullCopy(mv);
                        if (mv.returnTo != null)
                            sendingVertex.returnTo = new List<string>(mv.returnTo);
                        else
                        {
                            sendingVertex.returnTo = new List<string>();
                        }
                        sendingVertex.returnTo.Insert(0, name);
                        if (mv.shareWith != null)
                            sendingVertex.shareWith = new HashSet<string>(mv.shareWith);
                        else
                            sendingVertex.shareWith = new HashSet<string>();

                        for (int j = 0; j < sendingTo.Count; j++)
                        {
                            sendingVertex.shareWith.Add(sendingTo[j]);
                        }
                        sendingVertex.shareWith.Add(name);
                        if (!receivedStates[agentName].Contains(sendingVertex))
                        {
                            receivedStates[agentName].Add(sendingVertex);
                            Program.messages++;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        public void SendVertex(MapsVertex mv, Action lastAction)
        {
            try
            {
                if (lastAction.isGoalAction)
                {
                    SendVertexToAll(mv);
                    return;
                }

                foreach (string agentName in MapsPlanner.actionMap[lastAction.Name])
                {
                    if (agentName.Equals(name))
                        continue;
                    MapsPlanner.massageEffCounter++;
                    mv.shareWith = MapsPlanner.actionMap[lastAction.Name];
                    Program.sendedStateCounter++;
                    MapsVertex sendingVertex = new MapsVertex(mv);
                    sendingVertex.fullCopy(mv);
                    sendingVertex.shareWith = MapsPlanner.actionMap[lastAction.Name];
                    if (!openLists[agentName].Contains(sendingVertex))
                    {
                        openLists[agentName].Add(sendingVertex);
                        Program.messages++;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        public void SendVertex(MapsVertex mv, string agentName)
        {
            try
            {
                MapsPlanner.massageEffCounter++;
                mv.shareWith = new HashSet<string>();
                mv.shareWith.Add(name);
                mv.shareWith.Add(agentName);
                Program.sendedStateCounter++;
                MapsVertex sendingVertex = new MapsVertex(mv);
                sendingVertex.fullCopy(mv);
                sendingVertex.shareWith = new HashSet<string>();
                sendingVertex.shareWith.Add(name);
                sendingVertex.shareWith.Add(agentName);
                //sendingVertex.isReceivedState = mv.isReceivedState;
                if (mv.returnTo.Count == 1)
                    sendingVertex.returnTo = null;
                else
                {
                    sendingVertex.returnTo = new List<string>(mv.returnTo);
                    sendingVertex.returnTo.RemoveAt(0);
                }
                if (!openLists[agentName].Contains(sendingVertex))
                {
                    openLists[agentName].Add(sendingVertex);
                    Program.messages++;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        public void SendVertexToAll(MapsVertex mv)
        { 
            try
            {
                AddToAllSentStates(mv);
                foreach (string index in agentsNames)
                {
                    if (!name.Equals(index))
                    {
                        ++MapsPlanner.massageEffCounter;
                        mv.shareWith = MapsPlanner.sendedToAllSign;
                        ++Program.sendedStateCounter;
                        MapsVertex mapsVertex = new MapsVertex(mv);
                        mapsVertex.fullCopy(mv);

                        if (Program.projectionVersion == Program.ProjectionVersion.Global || Program.projectionVersion == Program.ProjectionVersion.GlobalV2)
                        {
                            if (mv.isPreferable && (mv.relaxPlan.Count != 0 || mv.afterMe == null || !mv.afterMe.Equals(index)))
                                mapsVertex.isPreferable = false;
                            else
                                MapsAgent.preferFlags[index] = true;
                        }
                        if (Program.projectionVersion == Program.ProjectionVersion.fullGlobal && (mv.isPreferable && mv.relaxPlan.Count > 0))
                        {
                            if (!BuildAgents_II.mapActionNameToAgents[mv.relaxPlan[0]].Contains(index))
                                mapsVertex.isPreferable = false;
                            else
                                MapsAgent.preferFlags[index] = true;
                        }
                        mapsVertex.shareWith = MapsPlanner.sendedToAllSign;
                        if (!openLists[index].Contains(mapsVertex))
                        {
                            openLists[index].Add(mapsVertex);
                            ++Program.messages;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        public void SendVertexToAllAgentOnNextListUse(MapsVertex mv, bool sendingRealStartState)
        {
            try
            {
                // save the sent state as sent for the sender agent:
                AddToAllSentStates(mv);
                foreach (string index in agentsNames)
                {
                    if (!name.Equals(index))
                    {
                        ++MapsPlanner.massageEffCounter;
                        mv.shareWith = MapsPlanner.sendedToAllSign;
                        ++Program.sendedStateCounter;
                        MapsVertex mapsVertex = new MapsVertex(mv);
                        mapsVertex.fullCopy(mv);

                        mapsVertex.senderAgent = this.name;
                        mapsVertex.agent2iparentVertex = mv.agent2iparentVertex;

                        if (Program.projectionVersion == Program.ProjectionVersion.Global || Program.projectionVersion == Program.ProjectionVersion.GlobalV2)
                        {
                            if (mv.isPreferable && (mv.relaxPlan.Count != 0 || mv.afterMe == null || !mv.afterMe.Equals(index)))
                                mapsVertex.isPreferable = false;
                            else
                                if (mv.isPreferable)
                                MapsAgent.preferFlags[index] = true;
                        }
                        else
                        {
                            if (Program.projectionVersion == Program.ProjectionVersion.fullGlobal && (mv.isPreferable && mv.relaxPlan.Count > 0))
                            {
                                if (!BuildAgents_II.mapActionNameToAgents[mv.relaxPlan[0]].Contains(index))
                                    mapsVertex.isPreferable = false;
                                else
                                    if (mv.isPreferable)
                                    MapsAgent.preferFlags[index] = true;
                            }
                            else
                            {
                                if (mv.isPreferable)
                                    MapsAgent.preferFlags[index] = true;
                            }
                        }
                        mapsVertex.shareWith = MapsPlanner.sendedToAllSign;
                        if (!openLists[index].Contains(mapsVertex))
                        {
                            MapsPlanner.nextGlobalOpenList[index].Add(mapsVertex);
                            ++Program.messages;
                        }

                        mapsVertex.h_when_sent = mv.h;
                        if (sendingRealStartState && MapsPlanner.tracesHandler.usesRealStartState())
                        {
                            // we recieved the real start state, so we need to save it in this agent's trace.
                            MapsPlanner.tracesHandler.publishRealStartState(MapsPlanner.name2mapsAgent[index], mapsVertex, -1, null);
                        }
                        else
                        {
                            // we recieved a regular state, save it in the trace.
                            MapsPlanner.tracesHandler.RecieveState(mapsVertex, MapsPlanner.name2mapsAgent[index], mv, this);
                        }
                        // save the received state as received for the receiver agent:
                        MapsPlanner.name2mapsAgent[index].AddToAllReceivedStates(mapsVertex);
                        // iparent:
                        HandleIParent(mapsVertex, MapsPlanner.name2mapsAgent[index]);
                        if(mv == realStartStateVertex)
                        {
                            MapsPlanner.name2mapsAgent[index].realStartStateVertex = mapsVertex;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        public void SendVertexToAllLockFirst(MapsVertex mv)
        {
            try
            {
                foreach (string agentName in agentsNames)
                {
                    if (!name.Equals(agentName))
                    {
                        MapsPlanner.massageEffCounter++;
                        mv.shareWith = MapsPlanner.sendedToAllSign;
                        Program.sendedStateCounter++;
                        MapsVertex sendingVertex = new MapsVertex(mv);
                        sendingVertex.fullCopy(mv);
                        sendingVertex.shareWith = MapsPlanner.sendedToAllSign;
                        // tmpMutex.WaitOne();
                        // globalMutex[agentName].WaitOne();
                        if (!openLists[agentName].Contains(sendingVertex))
                        {
                            openLists[agentName].Add(sendingVertex);
                            Program.messages++;
                        }
                        // tmpMutex.ReleaseMutex();
                        // globalMutex[agentName].ReleaseMutex();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

        }
        public void relaxActions(List<Action> allActions, List<Action> macroActions)
        {
            for (int i = 0; i < macroActions.Count; i++)
            {
                if (macroActions[i] is MacroAction)
                {
                    relaxActions(allActions, ((MacroAction)macroActions[i]).microActions);
                }
                else
                {
                    allActions.Add(macroActions[i]);
                }
            }
        }
        public MapsVertex MergeVertex(MapsVertex fv, MapsVertex cv1, MapsVertex cv2)
        {
            return null;
        }
        public List<MapsVertex> FindBestFiveByLandmak(HashSet<MapsVertex> lvertex, int coun)
        {
            int count = coun;
            if (lvertex.Count < count)
                count = lvertex.Count;
            List<MapsVertex> ans = new List<MapsVertex>();
            for (int i = 0; i < count; i++)
            {
                MapsVertex minVertex = null;
                foreach (MapsVertex mp in lvertex)
                {
                    if (!ans.Contains(mp))
                    {
                        minVertex = mp;
                        break;
                    }
                }
                foreach (MapsVertex v in lvertex)
                {
                    if (MapsVertex.ComparerByLandmark(v, minVertex) == -1 && !ans.Contains(v))
                    {
                        minVertex = v;
                    }
                }
                ans.Add(minVertex);
            }
            //lvertex.Remove(minVertex);
            return ans;

        }

        public MapsVertex FindMinByLandmak(HashSet<MapsVertex> lvertex)
        {
            MapsVertex minVertex = lvertex.ElementAt(0);
            foreach (MapsVertex v in lvertex)
            {
                int res = MapsVertex.ComparerByLandmark(v, minVertex);
                // int res = 0;
                // if (v.h < minVertex.h)
                //     res = -1;
                if (res == -1)
                {
                    minVertex = v;
                }
                else
                {
                    if (res == 0 && minVertex.returnTo != null && v.returnTo == null)
                    {
                        minVertex = v;
                    }
                }
            }
            lvertex.Remove(minVertex);
            return minVertex;
        }

        public MapsVertex FindMinByLandmakNotDell(HashSet<MapsVertex> lvertex)
        {
            MapsVertex minVertex = lvertex.ElementAt(0);
            foreach (MapsVertex v in lvertex)
            {
                if (MapsVertex.ComparerByLandmark(v, minVertex) == -1)
                {
                    minVertex = v;
                }
            }
            return minVertex;

        }
        public MapsVertex FindMinByFF(HashSet<MapsVertex> lvertex)
        {
            MapsVertex minVertex = lvertex.ElementAt(0);
            foreach (MapsVertex v in lvertex)
            {
                if (MapsVertex.ComparerByFF(v, minVertex) == -1)
                {
                    minVertex = v;
                }
            }
            lvertex.Remove(minVertex);
            return minVertex;

        }
        List<Action> relaxtionPlan = null;
        Dictionary<GroundedPredicate, Action> PreferablesActions = null;
        Dictionary<GroundedPredicate, int> hspGraph = null;
        HashSet<GroundedPredicate> iCanGet = null;
        HashSet<Action> temporalActionsNontGet = null;
        HashSet<GroundedPredicate> publiciCanGet = null;
        int level = 1;
        public HashSet<GroundedPredicate> InitHspGraph(State state)
        {
            relaxtionPlan = new List<Action>();
            PreferablesActions = new Dictionary<GroundedPredicate, Action>();
            //StateInfo oldState = hashOfStates.ElementAt(index).Key;

            // Landmark l = ppLandmarks.GetMyLandmark(name);


            //  bool otherAgentLandmarks=false;
            //  if (exploreLandmarks == null)
            // {
            //      exploreLandmarks = l;
            // otherAgentLandmarks=true;
            //   }

            hspGraph = new Dictionary<GroundedPredicate, int>();
            iCanGet = new HashSet<GroundedPredicate>();
            temporalActionsNontGet = new HashSet<Action>(m_actions);
            HashSet<GroundedPredicate> addList = null;
            foreach (GroundedPredicate prop in state.Predicates)
            {
                iCanGet.Add(prop);
                hspGraph.Add(prop, 0);
                PreferablesActions.Add(prop, null);
            }
            bool flag2 = true;
            level = 1;
            //  while (flag2)
            {
                flag2 = false;
                List<Action> tempActionList = new List<Action>();
                addList = new HashSet<GroundedPredicate>();
                foreach (Action act in temporalActionsNontGet)
                {
                    if (Contains(iCanGet, act.HashPrecondition))
                    {
                        tempActionList.Add(act);

                        if (act.Effects != null)
                        {
                            foreach (GroundedPredicate addProp in act.HashEffects)
                            {
                                if (!iCanGet.Contains(addProp) & !addList.Contains(addProp))
                                {
                                    addList.Add(addProp);
                                    PreferablesActions.Add(addProp, act);
                                    //iCanGet.Add(addProp);
                                    flag2 = true;
                                }

                            }
                        }

                    }


                }
                foreach (GroundedPredicate addP in addList)
                {
                    hspGraph.Add(addP, level);
                    iCanGet.Add(addP);
                }

                foreach (Action action in tempActionList)
                {
                    temporalActionsNontGet.Remove(action);
                }

            }
            publiciCanGet = new HashSet<GroundedPredicate>();
            foreach (GroundedPredicate gp in iCanGet)
            {
                if (publicFacts.Contains(gp))
                {
                    publiciCanGet.Add(gp);
                }
            }
            return publiciCanGet;

        }

        public KeyValuePair<bool, HashSet<GroundedPredicate>> UpdateHspGraph(HashSet<GroundedPredicate> OtherCanGet, int level, out bool isLocalGoal)
        {
            foreach (GroundedPredicate gp in OtherCanGet)
            {
                if (!iCanGet.Contains(gp))
                {
                    iCanGet.Add(gp);
                }
            }
            HashSet<GroundedPredicate> addList = new HashSet<GroundedPredicate>();
            bool flag2 = true;

            //while (flag2)
            {
                flag2 = false;
                List<Action> tempActionList = new List<Action>();

                foreach (Action act in temporalActionsNontGet)
                {
                    if (Contains(iCanGet, act.HashPrecondition))
                    {
                        tempActionList.Add(act);

                        if (act.Effects != null)
                        {
                            foreach (GroundedPredicate addProp in act.HashEffects)
                            {
                                if (!iCanGet.Contains(addProp) && !addList.Contains(addProp))
                                {
                                    addList.Add(addProp);
                                    // iCanGet.Add(addProp);
                                    PreferablesActions.Add(addProp, act);
                                    flag2 = true;
                                }

                            }
                        }

                    }


                }

                foreach (GroundedPredicate addP in addList)
                {
                    hspGraph.Add(addP, level);
                    iCanGet.Add(addP);
                }

                foreach (Action action in tempActionList)
                {
                    temporalActionsNontGet.Remove(action);
                }


            }
            HashSet<GroundedPredicate> addingPublicPredicate = new HashSet<GroundedPredicate>();
            foreach (GroundedPredicate gp in iCanGet)
            {
                if (publicFacts.Contains(gp))
                {
                    if (!publiciCanGet.Contains(gp))
                    {
                        publiciCanGet.Add(gp);
                        if (!OtherCanGet.Contains(gp))
                        {
                            addingPublicPredicate.Add(gp);
                        }
                    }
                }
            }
            isLocalGoal = true;
            foreach (GroundedPredicate gp in goal)
            {
                if (!iCanGet.Contains(gp))
                {
                    isLocalGoal = false;
                    break;
                }
            }
            return new KeyValuePair<bool, HashSet<GroundedPredicate>>(flag2, addingPublicPredicate);

        }
        public List<GroundedPredicate> GetPublicfactsGoals()
        {
            return goal;
        }

        List<GroundedPredicate> relaxGoals = null;
        HashSet<GroundedPredicate> AchievedFacts = null;
        public void InitRelaxtionPlan()
        {
            relaxGoals = new List<GroundedPredicate>();
            //AllLocalGoals = new HashSet<GroundedPredicate>(goal);

            AchievedFacts = new HashSet<GroundedPredicate>();
            relaxPlanPreconditions = new HashSet<GroundedPredicate>();
        }

        public List<GroundedPredicate> UpDateRelaxtionPlan(HashSet<GroundedPredicate> publicGoals, out string flag)
        {
            List<GroundedPredicate> newPublicGoals = new List<GroundedPredicate>();
            try
            {
                HashSet<GroundedPredicate> tmpLayerGoals = new HashSet<GroundedPredicate>();
                for (int i = 0; i < relaxGoals.Count; i++)
                {
                    GroundedPredicate gp = relaxGoals.ElementAt(i);
                    if (AchievedFacts.Contains(gp))
                    {
                        //relaxGoals.RemoveAt(i);
                        //i--;
                        continue;
                    }
                    if (PreferablesActions.ContainsKey(gp))
                    {
                        // relaxGoals.RemoveAt(i);
                        // i--;
                        AchievedFacts.Add(gp);
                        Action act = PreferablesActions[gp];
                        if (act != null)
                        {
                            relaxPlanPreconditions.Add(gp);
                            if (!relaxtionPlan.Contains(act))
                            {
                                relaxtionPlan.Add(act);
                                foreach (GroundedPredicate pre in act.HashPrecondition)
                                {
                                    if (!AchievedFacts.Contains(pre))
                                    {
                                        tmpLayerGoals.Add(pre);
                                    }
                                }
                            }
                        }

                    }
                    else
                    {
                        throw new Exception("bug");
                    }

                }
                for (int i = 0; i < publicGoals.Count; i++)
                {
                    GroundedPredicate gp = publicGoals.ElementAt(i);
                    if (AchievedFacts.Contains(gp))
                    {
                        publicGoals.Remove(gp);
                        i--;
                        continue;
                    }
                    if (PreferablesActions.ContainsKey(gp))
                    {
                        publicGoals.Remove(gp);
                        i--;
                        Action act = PreferablesActions[gp];
                        AchievedFacts.Add(gp);
                        if (act != null)
                        {
                            relaxPlanPreconditions.Add(gp);
                            if (!relaxtionPlan.Contains(act))
                            {
                                relaxtionPlan.Add(act);
                                foreach (GroundedPredicate pre in act.HashPrecondition)
                                {
                                    if (!AchievedFacts.Contains(pre))
                                    {
                                        tmpLayerGoals.Add(pre);
                                    }
                                }
                            }
                        }

                    }
                }
                if (tmpLayerGoals.Count > 0)
                    flag = "continue";
                else
                    flag = "finsh";

                for (int i = 0; i < tmpLayerGoals.Count; i++)
                {
                    GroundedPredicate gp = tmpLayerGoals.ElementAt(i);
                    if (AchievedFacts.Contains(gp))
                    {
                        tmpLayerGoals.Remove(gp);
                        i--;
                    }
                    else
                    {
                        if (publicFacts.Contains(gp))
                        {
                            tmpLayerGoals.Remove(gp);
                            i--;
                            newPublicGoals.Add(gp);
                        }
                    }
                }
                relaxGoals = tmpLayerGoals.ToList();
            }
            catch (Exception ex)
            {
                flag = "dd";
                return null;
            }
            return newPublicGoals;
        }

        public int GetRelaxPlanSize()
        {
            return relaxtionPlan.Count;
        }
        HashSet<GroundedPredicate> relaxPlanPreconditions = null;
        public HashSet<GroundedPredicate> GetRelaxPlanPreconditions()
        {
            return relaxPlanPreconditions;
        }

        public List<Action> RegGrounding(State courrentState, List<Action> highLevelplan, out int actionCount)
        {
            //  Console.WriteLine("\nPublic global plan found, searching for private plans");
            actionCount = 0;
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in highLevelplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (publicFacts.Contains(gp))
                    {
                        effect.AddOperand(gp);
                        flag = true;
                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
                else
                    actionCount = actionCount;
            }
            int count = 0;
            List<Action> finalPlan = new List<Action>();

            int level = 0;

            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);
                if (name.Equals(agentName))
                {
                    bool bUnsolvable = false;
                    //ExternalPlanners externalPlanners = new ExternalPlanners();
                    //List<string> ffLplan = externalPlanners.Plan(true, false, domain, problem, courrentState, goalFormula,m_actions, 5 * 60 * 1000, out bUnsolvable);
                    HSPHeuristic hsp = new HSPHeuristic(m_actions, goalFormula.GetAllPredicates().ToList(), false);
                    ForwardSearchPlanner forwardSearch = new ForwardSearchPlanner(m_actions, hsp, 30);
                    List<Action> path = forwardSearch.Plan(courrentState, goalFormula.GetAllPredicates().ToList());
                    List<string> ffLplan = null;
                    if (path != null)
                    {
                        ffLplan = new List<string>();
                        foreach (Action act in path)
                        {
                            ffLplan.Add(act.Name);
                        }
                    }
                    if (ffLplan != null)
                    {
                        List<string> todo = ffLplan;
                        foreach (string act in todo)
                        {
                            actionCount++;
                            State s = courrentState.ApplyII(domain.mapActionNameToAction[act]);
                            if (s == null)
                                throw new Exception();
                            courrentState = s;
                            finalPlan.Add(domain.mapActionNameToAction[act]);
                        }

                    }
                    else
                    {
                        Program.KillPlanners();
                    }
                }
                else
                {
                    //actionCount++;
                    courrentState = courrentState.ApplyEffect(goalFormula, publicFacts);
                }
            }
            return finalPlan;
        }
        public List<Action> RegGroundingFF(State courrentState, List<Action> highLevelplan, out int actionCount)
        {
            //  Console.WriteLine("\nPublic global plan found, searching for private plans");
            actionCount = 0;
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in highLevelplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (publicFacts.Contains(gp))
                    {
                        effect.AddOperand(gp);
                        flag = true;
                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
                else
                    actionCount = actionCount;
            }
            int count = 0;
            List<Action> finalPlan = new List<Action>();

            int level = 0;

            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);
                if (name.Equals(agentName))
                {
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    List<string> ffLplan = externalPlanners.Plan(true, false, domain, problem, courrentState, goalFormula, m_actions, 5 * 60 * 1000, out bUnsolvable);

                    if (ffLplan != null)
                    {
                        List<string> todo = ffLplan;
                        foreach (string act in todo)
                        {
                            actionCount++;
                            State s = courrentState.ApplyII(domain.mapActionNameToAction[act]);
                            if (s == null)
                                throw new Exception();
                            courrentState = s;
                            finalPlan.Add(domain.mapActionNameToAction[act]);
                        }

                    }
                    else
                    {
                        Program.KillPlanners();
                    }
                }
                else
                {
                    //actionCount++;
                    courrentState = courrentState.ApplyEffect(goalFormula, publicFacts);
                }
            }
            return finalPlan;
        }




        // }

        public List<Action> Grounding(int agentIndex, State courrentState, List<Action> highLevelplan, out int actionCount, out int allActionCount, out Dictionary<int, List<string>> groupPlan)
        {
            List<List<Action>> dellList = new List<List<Action>>();
            State orginalState = courrentState;
            List<List<CompoundFormula>> effSets = new List<List<CompoundFormula>>();
            groupPlan = new Dictionary<int, List<string>>();
            List<KeyValuePair<string, CompoundFormula>> list1 = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action action in highLevelplan)
            {
                CompoundFormula compoundFormula = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate groundedPredicate in action.HashEffects)
                {
                    if (publicFacts.Contains(groundedPredicate))
                    {
                        compoundFormula.AddOperand((Predicate)groundedPredicate);
                        flag = true;
                    }
                }
                if (flag)
                {
                    list1.Add(new KeyValuePair<string, CompoundFormula>(action.agent, compoundFormula));
                    List<CompoundFormula> l = new List<CompoundFormula>();
                    l.Add(compoundFormula);
                    effSets.Add(l);
                }
            }
            actionCount = 0;
            allActionCount = 0;
            List<Dictionary<CompoundFormula, string>> list2 = new List<Dictionary<CompoundFormula, string>>();
            List<Action> list3 = new List<Action>();
            int index1 = -1;
            State prev = null;
            Action prevAction = null;
            int prevActionCount = 0;
            int prevAllActionCount = 0;
            bool twoPublic = false;
            int countAction = 0;
            for (int i = 0; i < list1.Count; i++)
            {
                dellList.Add(new List<Action>());
                KeyValuePair<string, CompoundFormula> keyValuePair = list1[i];
                ++index1;
                List<Action> privateAndMore = new List<Action>(privateActions);
                //privateAndMore.Add(highLevelplan[countAction]);
                //countAction++;  

                CompoundFormula compoundFormula = keyValuePair.Value;

                if (name.Equals(keyValuePair.Key))
                {
                    foreach (Action pubAct in publicActions)
                    {
                        foreach (CompoundFormula cm in effSets[i])
                        {
                            bool con = true;
                            foreach (GroundedPredicate gp in cm.GetAllPredicates())
                                if (!pubAct.HashEffects.Contains(gp))
                                    con = false;
                            if (con)
                                privateAndMore.Add(pubAct);
                        }
                    }
                    foreach (Action dellAct in dellList[i])
                    {
                        privateAndMore.Remove(dellAct);
                    }
                    bool isPublic = false;
                    foreach (Action act in privateAndMore)
                    {
                        if (publicActions.Contains(act))
                        {
                            isPublic = true;
                            break;
                        }
                    }
                    if (!isPublic)
                    {
                        return null;
                    }

                    List<Action> list4 = new ForwardSearchPlanner(privateAndMore, new HSPHeuristic(privateAndMore, Enumerable.ToList<Predicate>((IEnumerable<Predicate>)compoundFormula.GetAllPredicates()), false), 30).Plan(courrentState, Enumerable.ToList<Predicate>((IEnumerable<Predicate>)compoundFormula.GetAllPredicates()));
                    List<string> list5 = (List<string>)null;
                    if (list4 != null)
                    {
                        list5 = new List<string>();
                        foreach (Action action in list4)
                            list5.Add(action.Name);
                        prevAction = list4.Last();
                        prevActionCount = actionCount;
                        prevAllActionCount = allActionCount;
                    }
                    else
                    {
                        //    return GroundingByActions(agentIndex, orginalState, highLevelplan, out actionCount, out allActionCount, out groupPlan);
                        if (prev != null)
                        {
                            // try to force other path for the last planning iteration (i-1)
                            dellList[i - 1].Add(prevAction);
                            courrentState = prev;
                            actionCount = prevActionCount;
                            allActionCount = prevAllActionCount;
                            i--;
                            i--;
                            index1--;
                            index1--;
                            //  throw new Exception("need to chack this rows");
                        }
                        else
                        {
                            return null;
                        }

                    }
                    if (list5 != null)
                    {
                        groupPlan[index1] = new List<string>((IEnumerable<string>)list5);
                        foreach (string index2 in list5)
                        {
                            actionCount = actionCount + 1;
                            prev = courrentState;
                            allActionCount = allActionCount + 1;
                            State state = courrentState.ApplyII(domain.mapActionNameToAction[index2]);
                            if (state == null)
                                throw new Exception();
                            courrentState = state;
                            list3.Add(domain.mapActionNameToAction[index2]);
                        }
                    }
                    // else
                    //   Program.KillPlanners();
                }
                else
                {
                    allActionCount = allActionCount + 1;
                    courrentState = courrentState.ApplyEffect((Formula)compoundFormula, publicFacts);
                }
            }

            groupPlan[highLevelplan.Count + agentIndex] = new List<string>();
            return list3;

            CompoundFormula compoundFormula1 = new CompoundFormula("and");
            foreach (GroundedPredicate groundedPredicate in goal)
                compoundFormula1.AddOperand((Predicate)groundedPredicate);
            if (compoundFormula1.Operands.Count > 0)
            {
                bool bUnsolvable;
                List<string> list4 = new ExternalPlanners().Plan(true, false, domain, problem, courrentState, (Formula)compoundFormula1, m_actions, 300000, out bUnsolvable);
                if (list4 != null)
                {
                    groupPlan[highLevelplan.Count + agentIndex] = new List<string>((IEnumerable<string>)list4);
                    foreach (string index2 in list4)
                    {
                        actionCount = actionCount + 1;
                        allActionCount = allActionCount + 1;
                        State state = courrentState.ApplyII(domain.mapActionNameToAction[index2]);
                        if (state == null)
                            throw new Exception();
                        courrentState = state;
                        list3.Add(domain.mapActionNameToAction[index2]);
                    }
                }
                else
                    Program.KillPlanners();
            }
            else
                groupPlan[highLevelplan.Count + agentIndex] = new List<string>();
            return list3;
        }

        public List<Action> GroundingByActions(int agentIndex, State courrentState, List<Action> highLevelplan, out int actionCount, out int allActionCount, out Dictionary<int, List<string>> groupPlan)
        {
            groupPlan = new Dictionary<int, List<string>>();
            List<KeyValuePair<string, CompoundFormula>> list1 = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action action in highLevelplan)
            {
                CompoundFormula compoundFormula = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate groundedPredicate in action.HashPrecondition)
                {
                    compoundFormula.AddOperand((Predicate)groundedPredicate);
                    flag = true;
                }
                if (flag)
                    list1.Add(new KeyValuePair<string, CompoundFormula>(action.agent, compoundFormula));
            }
            actionCount = 0;
            allActionCount = 0;
            List<Dictionary<CompoundFormula, string>> list2 = new List<Dictionary<CompoundFormula, string>>();
            List<Action> list3 = new List<Action>();
            int index1 = -1;
            int countAction = 0;

            foreach (KeyValuePair<string, CompoundFormula> keyValuePair in list1)
            {
                ++index1;
                List<Action> privateAndMore = new List<Action>(privateActions);

                CompoundFormula compoundFormula = keyValuePair.Value;
                if (name.Equals(keyValuePair.Key))
                {
                    List<Action> list4 = new ForwardSearchPlanner(privateAndMore, new HSPHeuristic(privateAndMore, Enumerable.ToList<Predicate>((IEnumerable<Predicate>)compoundFormula.GetAllPredicates()), false), 30).Plan(courrentState, Enumerable.ToList<Predicate>((IEnumerable<Predicate>)compoundFormula.GetAllPredicates()));
                    list4.Add(highLevelplan[index1]);
                    List<string> list5 = (List<string>)null;
                    if (list4 != null)
                    {
                        list5 = new List<string>();
                        foreach (Action action in list4)
                            list5.Add(action.Name);
                    }
                    if (list5 != null)
                    {
                        groupPlan[index1] = new List<string>((IEnumerable<string>)list5);
                        foreach (string index2 in list5)
                        {
                            actionCount = actionCount + 1;
                            allActionCount = allActionCount + 1;
                            State state = courrentState.ApplyII(domain.mapActionNameToAction[index2]);
                            if (state == null)
                                throw new Exception();
                            courrentState = state;
                            list3.Add(domain.mapActionNameToAction[index2]);
                        }
                    }
                    else
                        Program.KillPlanners();
                }
                else
                {
                    allActionCount = allActionCount + 1;
                    courrentState = courrentState.ApplyEffect((Formula)highLevelplan[index1].Effects, publicFacts);
                }
            }

            groupPlan[highLevelplan.Count + agentIndex] = new List<string>();
            return list3;

            CompoundFormula compoundFormula1 = new CompoundFormula("and");
            foreach (GroundedPredicate groundedPredicate in goal)
                compoundFormula1.AddOperand((Predicate)groundedPredicate);
            if (compoundFormula1.Operands.Count > 0)
            {
                bool bUnsolvable;
                List<string> list4 = new ExternalPlanners().Plan(true, false, domain, problem, courrentState, (Formula)compoundFormula1, m_actions, 300000, out bUnsolvable);
                if (list4 != null)
                {
                    groupPlan[highLevelplan.Count + agentIndex] = new List<string>((IEnumerable<string>)list4);
                    foreach (string index2 in list4)
                    {
                        actionCount = actionCount + 1;
                        allActionCount = allActionCount + 1;
                        State state = courrentState.ApplyII(domain.mapActionNameToAction[index2]);
                        if (state == null)
                            throw new Exception();
                        courrentState = state;
                        list3.Add(domain.mapActionNameToAction[index2]);
                    }
                }
                else
                    Program.KillPlanners();
            }
            else
                groupPlan[highLevelplan.Count + agentIndex] = new List<string>();
            return list3;
        }

        public List<Action> GroundingFF(int agentIndex, State courrentState, List<Action> highLevelplan, out int actionCount, out int allActionCount, Dictionary<int, List<string>> groupPlan)
        {
            List<KeyValuePair<string, CompoundFormula>> list1 = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action action in highLevelplan)
            {
                CompoundFormula compoundFormula = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate groundedPredicate in action.HashEffects)
                {
                    if (publicFacts.Contains(groundedPredicate))
                    {
                        compoundFormula.AddOperand((Predicate)groundedPredicate);
                        flag = true;
                    }
                }
                if (flag)
                    list1.Add(new KeyValuePair<string, CompoundFormula>(action.agent, compoundFormula));
            }
            actionCount = 0;
            allActionCount = 0;
            List<Dictionary<CompoundFormula, string>> list2 = new List<Dictionary<CompoundFormula, string>>();
            List<Action> list3 = new List<Action>();
            int index1 = -1;
            foreach (KeyValuePair<string, CompoundFormula> keyValuePair in list1)
            {
                ++index1;
                CompoundFormula compoundFormula = keyValuePair.Value;
                if (name.Equals(keyValuePair.Key))
                {
                    bool bUnsolvable = false;
                    List<string> list4 = new ExternalPlanners().Plan(true, false, domain, problem, courrentState, (Formula)compoundFormula, m_actions, 300000, out bUnsolvable);
                    if (list4 != null)
                    {
                        groupPlan[index1] = new List<string>((IEnumerable<string>)list4);
                        foreach (string index2 in list4)
                        {
                            actionCount = actionCount + 1;
                            allActionCount = allActionCount + 1;
                            State state = courrentState.ApplyII(domain.mapActionNameToAction[index2]);
                            if (state == null)
                                throw new Exception();
                            courrentState = state;
                            list3.Add(domain.mapActionNameToAction[index2]);
                        }
                    }
                    else
                        Program.KillPlanners();
                }
                else
                {
                    allActionCount = allActionCount + 1;
                    courrentState = courrentState.ApplyEffect((Formula)compoundFormula, publicFacts);
                }
            }
            CompoundFormula compoundFormula1 = new CompoundFormula("and");
            foreach (GroundedPredicate groundedPredicate in goal)
                compoundFormula1.AddOperand((Predicate)groundedPredicate);
            if (compoundFormula1.Operands.Count > 0)
            {
                bool bUnsolvable;
                List<string> list4 = new ExternalPlanners().Plan(true, false, domain, problem, courrentState, (Formula)compoundFormula1, m_actions, 300000, out bUnsolvable);
                if (list4 != null)
                {
                    groupPlan[highLevelplan.Count + agentIndex] = new List<string>((IEnumerable<string>)list4);
                    foreach (string index2 in list4)
                    {
                        actionCount = actionCount + 1;
                        allActionCount = allActionCount + 1;
                        State state = courrentState.ApplyII(domain.mapActionNameToAction[index2]);
                        if (state == null)
                            throw new Exception();
                        courrentState = state;
                        list3.Add(domain.mapActionNameToAction[index2]);
                    }
                }
                else
                    Program.KillPlanners();
            }
            else
                groupPlan[highLevelplan.Count + agentIndex] = new List<string>();
            return list3;
        }
        public static void InitMutex(List<MapsAgent> agents)
        {
            MapsAgent.heursticCalcultionMutex = new Mutex();
            MapsAgent.massageListMutex = new Dictionary<string, Mutex>();
            MapsAgent.goalChackMutex = new Mutex();
            MapsAgent.preferFlags = new Dictionary<string, bool>();
            foreach (MapsAgent mapsAgent in agents)
            {
                MapsAgent.massageListMutex.Add(mapsAgent.name, new Mutex());
                MapsAgent.preferFlags.Add(mapsAgent.name, false);
            }
        }
    }

}


