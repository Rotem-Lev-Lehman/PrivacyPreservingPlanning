﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;

namespace Planning
{
    class VertexHsp
    {
        public bool useFd = false;
        public List<string> History = new List<string>();
        public bool onlyPrefered = false;
        public Action lastAction = null;
        public bool isPrefered;
        public HashSet<CompoundFormula> canGetInParallel;
        public HashSet<string> preferdAction;
        public Dictionary<string, bool[]> NotPossibleActions = null;
        public bool[] SatisfactionLandmarks = null;
        public bool[] anyTimeSatisfactionLandmarks = null;
        public static List<Agent> agents = null;
        public List<bool[][]> vectors = null;
        //public List<bool[]> canGetWithProjections = null;
        public bool innovative = false;
        
        //public static Domain d;
        //public static Problem p;
        public static HSPHeuristic hsp = null;
        public static ForwardSearchPlanner forwardSearch = null;
        public List<Action> lplan = null;
        public List<HashSet<CompoundFormula>> publicPredicateImplications = null;
        public static List<string> ffLplan = null;
        // private List<Landmark> restLandmark = null;
        public int[] statesNubmber;
        public double g = 0;
        public double h = 0;
        public int h2 = 0;
        public List<int> indexsOfLandmarks = new List<int>();
        public double cost = 0;
        public HashSet<Predicate> JointPublicPredicates { get; private set; }
        //public HashSet<Predicate> JointPublicPredicates2 { get; private set; }
        public VertexHsp Parent { get; private set; }
        public int BlindSearchDepth { get; private set; }

        private static int VertexHsp_COUNT = 0;
        public int ID { get; private set; }

        public static Dictionary<string, int> map = null;
        public static void initVertxClass(List<Agent> m_agents)
        {
            agents = m_agents;

            map = new Dictionary<string, int>();
            for (int i = 0; i < agents.Count; i++)
            {
                map.Add(agents[i].name, i);

            }

        }

        public string IsGoal(out List<string> finalPlan)
        {
            finalPlan = null;
            //return "true"; 
            //if (h > 0) return "false";
            for (int i = 0; i < agents.Count; i++)
            {
                if (!agents[i].ReachTheGoal(statesNubmber[i]))
                    return "false";
            }
            if (Program.highLevelPlanerType == Planning.Program.HighLevelPlanerType.SophisticatedProjection)
            {
                foreach (Agent agent in agents)
                {
                    agent.GoBack();
                }
                List<Action> tmp = new List<Action>();
                foreach (Action act in lplan)
                {
                    foreach (Agent agent in agents)
                    {
                        if (agent.mapActionNameToAction.ContainsKey(act.Name))
                        {
                            tmp.Add(agent.mapActionNameToAction[act.Name]);
                            continue;
                        }
                    }
                }
                lplan = tmp;
            }
            string fault;
            // Console.WriteLine();
            //Console.WriteLine("#Actions: " + lplan.Count);
            string flagb;
            //  Console.WriteLine("...................................");
            //  Console.ReadKey();

            //if (hspGroupPlaner(out finalPlan, out fault))
            //    return "true";
                



           // if (this.GetGroundPlan(out flagb, out finalPlan))
           //     return "true";

            if (hspRegPlaner(out finalPlan, out fault,10))
                return "true";

            if (Program.internalPlaner == Program.PlanerType.ff_tryCoordinate)
            {
                if (planToGoalI_III(out finalPlan, out fault))
                    return "true";
            }
            if (Program.internalPlaner == Program.PlanerType.ff_toActions)
            {
                if (GroundingActions(out finalPlan, out fault))
                    return "true";
            }
            if (Program.internalPlaner == Program.PlanerType.hsp_tryCoordinate)
            {
                if (planToGoalI_I(out finalPlan, out fault))
                    return "true";
            }
            if (Program.internalPlaner == Program.PlanerType.ff_directPlan)
            {
                if (planToGoal_ffToFormoula(out finalPlan, out fault))
                    return "true";
            }
            if (Program.internalPlaner == Program.PlanerType.hsp_directPlan)
            {
                if (planToGoalIIII(out finalPlan, out fault))
                    return "true";
            }
            if (Program.internalPlaner == Program.PlanerType.ff_toActions)
            {
                if (planToGoal_ffToActions(out finalPlan, out fault))
                    return "true";
            }

            if (hspRegPlaner(out finalPlan, out fault, 60))
                return "true";

            if (hspGroupPlaner(out finalPlan, out fault))
                    return "true";

                fault = "false";
            return fault;
        }

        public VertexHsp(VertexHsp preVertex, Action lastAct)
        {
            Parent = preVertex;
            lastAction = lastAct;
        }

        public VertexHsp(int[] m_statesNubmber, List<Action> m_lplan, double new_G, int landmark_h, double hsp_h, double m_cost, List<HashSet<CompoundFormula>> pot)
        {
            /*  if (pot != null)
                  publicPredicateImplications = new List<HashSet<CompoundFormula>>(pot);
              else
                  publicPredicateImplications = new List<HashSet<CompoundFormula>>();
              */

            ID = VertexHsp_COUNT++;
            // NotPossibleActions = new Dictionary<string, bool[]>();
            JointPublicPredicates = new HashSet<Predicate>();
            // JointPublicPredicates2 = new HashSet<Predicate>();
            foreach (Agent a in agents)
            {
                foreach (GroundedPredicate gp in a.startState.Predicates)
                {
                    if (a.PublicPredicates.Contains(gp))
                    {
                        //JointPublicPredicates2.Add(gp);
                        if (!gp.Negation)
                            JointPublicPredicates.Add(gp);
                    }
                }
                //NotPossibleActions.Add(agents[i].name, new bool[agents[i].allActionsWithProjectionAction.Count()]);

            }

            vectors = new List<bool[][]>();
            foreach (Agent agent in agents)
            {
                //bool[][] vec = new bool[2][];
                //vec[0] = agent.initialVectors[0];
                //vec[1] = agent.initialVectors[1];
                vectors.Add(agent.GetInitialVectors());
            }
            SatisfactionLandmarks = new bool[vectors.ElementAt(0)[0].Length];
            anyTimeSatisfactionLandmarks = new bool[vectors.ElementAt(0)[0].Length];
            statesNubmber = m_statesNubmber;
            foreach (int Vnum in statesNubmber)
            {
                if (Vnum == -1)
                {
                    h = -1;
                    return;
                }
            }
            cost = m_cost;
            g = new_G;
            HashSet<GroundedPredicate> publicPredicate = new HashSet<GroundedPredicate>();
            h = hsp_h;
            h2 = landmark_h;
            lplan = new List<Action>(m_lplan);
        }

        public VertexHsp Calculate_h()
        {
            try
            {

                return this.Parent.ApplyWithoutChecking(this.lastAction);
            }
            catch (Exception ex)
            {
                return this;
            }
        }

        public VertexHsp ApplyWithoutChecking(Action act)
        {
            bool innovative = false;


            int[] newStateNumbers = new int[agents.Count];
            double m_h = 0;
            List<bool[]> vectors = new List<bool[]>();
            List<bool[]> vectors2 = new List<bool[]>();
            // bool[] oldVector = agents.ElementAt(0).GetVectors(statesNubmber[0]);
            List<bool[][]> newVectors = new List<bool[][]>();
            HashSet<Predicate> lNewPublicPredicates = new HashSet<Predicate>();
            for (int i = 0; i < agents.Count; i++)
            {
                bool[] satisfiedNew = null;
                var ans = agents[i].DemoApply(statesNubmber[i], act, out satisfiedNew, this.vectors.ElementAt(i)[0], this.vectors.ElementAt(i)[1], lNewPublicPredicates);
                newVectors.Add(ans.Value);
                vectors.Add(ans.Value[0]);
                vectors2.Add(satisfiedNew);
                newStateNumbers[i] = ans.Key;

            }
            bool[] firstVector = new bool[vectors.ElementAt(0).Length];
            bool[] secondVector = new bool[vectors.ElementAt(0).Length];
            for (int j = 0; j < firstVector.Length; j++)
            {

                bool flag = false;
                foreach (var vector in vectors)
                {
                    if (vector[j] == true)
                    {
                        flag = true;
                        firstVector[j] = true;
                        // if (oldVector[j] == false)
                        //  innovative = true;
                        break;
                    }
                }
                foreach (var vector2 in vectors2)
                {
                    if (vector2[j] == true)
                    {
                        flag = true;
                        secondVector[j] = true;
                        break;
                    }
                }



            }
            bool[] tmpAntTime = new bool[firstVector.Length];
            for (int j = 0; j < firstVector.Length; j++)
            {

                if (firstVector[j] || this.anyTimeSatisfactionLandmarks[j])
                {
                    tmpAntTime[j] = true;
                }

            }
            //h2 += makeFalse;
            bool f = true;
            // not using Orders
            while (f)
            {
                f = false;
                foreach (PPOrder order in Distributed_Landmarks_Detection.necessaryPPOrders)
                {
                    if (firstVector[order.lendmark1.index] && !secondVector[order.lendmark1.index] && !tmpAntTime[order.lendmark2.index])
                    {
                        firstVector[order.lendmark1.index] = false;
                        f = true;
                        for (int i = 0; i < newVectors.Count; i++)
                        {
                            newVectors[i][0][order.lendmark1.index] = false;
                        }
                    }
                }
            }
            //int makeFalse = 0;
            List<int> indexes = new List<int>(indexsOfLandmarks);

            for (int j = 0; j < firstVector.Length; j++)
            {
                if (!firstVector[j] && SatisfactionLandmarks[j])
                {
                    if (!indexes.Contains(j))
                        indexes.Add(j);
                }
                if (!firstVector[j])
                {
                    m_h++;
                }


            }

            // if (m_h == 1)
            // Console.WriteLine("*");

            for (int i = 0; i < agents.Count; i++)
            {
                //agents[i].UpDateVectors(newStateNumbers[i], firstVector);
            }
            VertexHsp newVertexHsp = new VertexHsp(newStateNumbers, lplan, g + 1, (int)m_h, 0, 0, publicPredicateImplications);
            int cost = newVertexHsp.ComputeFF_h(firstVector);
            newVertexHsp.ComputePreferActions();
            if (cost == -1)
                return null;
            //if (cost == 0)
            //  Console.WriteLine("ss");
            if (preferdAction.Contains(act.Name))
            {
                newVertexHsp.isPrefered = true;
            }
            else
            {
                newVertexHsp.isPrefered = false;
            }
            newVertexHsp.h += cost;
            newVertexHsp.Parent = this;
            newVertexHsp.vectors = newVectors;
            newVertexHsp.SatisfactionLandmarks = firstVector;
            newVertexHsp.JointPublicPredicates = new HashSet<Predicate>(JointPublicPredicates);
            // newVertexHsp.JointPublicPredicates2 = new HashSet<Predicate>(JointPublicPredicates2);
            newVertexHsp.anyTimeSatisfactionLandmarks = tmpAntTime;
            foreach (Predicate p in lNewPublicPredicates)
            {
                if (p.Negation)
                {
                    if (newVertexHsp.JointPublicPredicates.Contains(p.Negate()))
                    {
                        newVertexHsp.JointPublicPredicates.Remove(p.Negate());
                        // newVertexHsp.JointPublicPredicates2.Remove(p.Negate());
                        // newVertexHsp.JointPublicPredicates2.Add(p);
                    }

                }
                else
                {
                    newVertexHsp.JointPublicPredicates.Add(p);
                    // newVertexHsp.JointPublicPredicates2.Remove(p);
                    //newVertexHsp.JointPublicPredicates2.Remove(p.Negate());
                }
            }


            if (newVertexHsp.h == -1)
                return null;
            if (newVertexHsp.h < h)
                newVertexHsp.BlindSearchDepth = 0;
            else
                newVertexHsp.BlindSearchDepth = BlindSearchDepth + 1;
            newVertexHsp.History = new List<string>(History);
            newVertexHsp.History.Add(act.Name);
            newVertexHsp.innovative = innovative;
            newVertexHsp.lplan.Add(act);

            //if (newVertexHsp.IsDeadEnd())
            //  return null;
            //newVertexHsp.indexsOfLandmarks = indexes;
            //newVertexHsp.h2 = indexes.Count;
            //newVertexHsp.h -=indexes.Count;
            return newVertexHsp;
        }
        public VertexHsp Apply(Action act)
        {
            bool innovative = false;

            //if (!PublicCanDo(act))
            //    return null;
            if (!agents[map[act.agent]].CanDo(statesNubmber[map[act.agent]], act))
                return null;

            int[] newStateNumbers = new int[agents.Count];
            double m_h = 0;
            List<bool[]> vectors = new List<bool[]>();
            List<bool[]> vectors2 = new List<bool[]>();
            // bool[] oldVector = agents.ElementAt(0).GetVectors(statesNubmber[0]);
            List<bool[][]> newVectors = new List<bool[][]>();
            HashSet<Predicate> lNewPublicPredicates = new HashSet<Predicate>();
            for (int i = 0; i < agents.Count; i++)
            {
                bool[] satisfiedNew = null;
                var ans = agents[i].DemoApply(statesNubmber[i], act, out satisfiedNew, this.vectors.ElementAt(i)[0], this.vectors.ElementAt(i)[1], lNewPublicPredicates);
                newVectors.Add(ans.Value);
                vectors.Add(ans.Value[0]);
                vectors2.Add(satisfiedNew);
                newStateNumbers[i] = ans.Key;
            }
            bool[] firstVector = new bool[vectors.ElementAt(0).Length];
            bool[] secondVector = new bool[vectors.ElementAt(0).Length];
            for (int j = 0; j < firstVector.Length; j++)
            {

                bool flag = false;
                foreach (var vector in vectors)
                {
                    if (vector[j] == true)
                    {
                        flag = true;
                        firstVector[j] = true;
                        // if (oldVector[j] == false)
                        //  innovative = true;
                        break;
                    }
                }
                foreach (var vector2 in vectors2)
                {
                    if (vector2[j] == true)
                    {
                        flag = true;
                        secondVector[j] = true;
                        break;
                    }
                }



            }
            bool[] tmpAntTime = new bool[firstVector.Length];
            for (int j = 0; j < firstVector.Length; j++)
            {

                if (firstVector[j] || this.anyTimeSatisfactionLandmarks[j])
                {
                    tmpAntTime[j] = true;
                }

            }
            //h2 += makeFalse;
            bool f = true;
            // not using Orders
            while (f)
            {
                f = false;
                foreach (PPOrder order in Distributed_Landmarks_Detection.necessaryPPOrders)
                {
                    if (firstVector[order.lendmark1.index] && !secondVector[order.lendmark1.index] && !tmpAntTime[order.lendmark2.index])
                    {
                        firstVector[order.lendmark1.index] = false;
                        f = true;
                        for (int i = 0; i < newVectors.Count; i++)
                        {
                            newVectors[i][0][order.lendmark1.index] = false;
                        }
                    }
                }
            }
            //int makeFalse = 0;
            List<int> indexes = new List<int>(indexsOfLandmarks);

            for (int j = 0; j < firstVector.Length; j++)
            {
                if (!firstVector[j] && SatisfactionLandmarks[j])
                {
                    if (!indexes.Contains(j))
                        indexes.Add(j);
                }
                if (!firstVector[j])
                {
                    m_h++;
                }


            }

            // if (m_h == 1)
            // Console.WriteLine("*");

            for (int i = 0; i < agents.Count; i++)
            {
                //agents[i].UpDateVectors(newStateNumbers[i], firstVector);
            }
            VertexHsp newVertexHsp = new VertexHsp(newStateNumbers, lplan, g + 1, (int)m_h, 0, 0, publicPredicateImplications);
            int cost = newVertexHsp.ComputeFF_h(firstVector);
            newVertexHsp.ComputePreferActions();
            if (cost == -1)
                return null;
            //if (cost == 0)
            //  Console.WriteLine("ss");
            if (preferdAction.Contains(act.Name))
            {
                newVertexHsp.isPrefered = true;
            }
            else
            {
                newVertexHsp.isPrefered = false;
            }
            newVertexHsp.h += cost;
            newVertexHsp.Parent = this;
            newVertexHsp.vectors = newVectors;
            newVertexHsp.SatisfactionLandmarks = firstVector;
            newVertexHsp.JointPublicPredicates = new HashSet<Predicate>(JointPublicPredicates);
            // newVertexHsp.JointPublicPredicates2 = new HashSet<Predicate>(JointPublicPredicates2);
            newVertexHsp.anyTimeSatisfactionLandmarks = tmpAntTime;
            foreach (Predicate p in lNewPublicPredicates)
            {
                if (p.Negation)
                {
                    if (newVertexHsp.JointPublicPredicates.Contains(p.Negate()))
                    {
                        newVertexHsp.JointPublicPredicates.Remove(p.Negate());
                        // newVertexHsp.JointPublicPredicates2.Remove(p.Negate());
                        // newVertexHsp.JointPublicPredicates2.Add(p);
                    }

                }
                else
                {
                    newVertexHsp.JointPublicPredicates.Add(p);
                    // newVertexHsp.JointPublicPredicates2.Remove(p);
                    //newVertexHsp.JointPublicPredicates2.Remove(p.Negate());
                }
            }


            if (newVertexHsp.h == -1)
                return null;
            if (newVertexHsp.h < h)
                newVertexHsp.BlindSearchDepth = 0;
            else
                newVertexHsp.BlindSearchDepth = BlindSearchDepth + 1;
            newVertexHsp.History = new List<string>(History);
            newVertexHsp.History.Add(act.Name);
            newVertexHsp.innovative = innovative;
            newVertexHsp.lplan.Add(act);

            //if (newVertexHsp.IsDeadEnd())
            //  return null;
            //newVertexHsp.indexsOfLandmarks = indexes;
            //newVertexHsp.h2 = indexes.Count;
            //newVertexHsp.h -=indexes.Count;
            return newVertexHsp;
        }
        public VertexHsp OnlyApply(Action act)
        {

            if (!agents[map[act.agent]].CanDo(statesNubmber[map[act.agent]], act))
                return null;


            VertexHsp newVertexHsp = new VertexHsp(this, act);

            newVertexHsp.h = this.h;
            newVertexHsp.h2 = this.h2;
            if (preferdAction.Contains(act.Name))
            {
                newVertexHsp.isPrefered = true;
            }
            else
            {
                newVertexHsp.isPrefered = false;
            }


            return newVertexHsp;
        }
        /* public VertexHsp LocalApply(Action act)
         {
             bool innovative = false;
             if (!agents[map[act.agent]].CanDo(statesNubmber[map[act.agent]], act))
                 return null;
             int[] newStateNumbers = new int[agents.Count];
             double m_h = 0;

             List<bool[]> vectors = new List<bool[]>();
             List<bool[]> vectors2 = new List<bool[]>();

             bool[] oldVector = agents.ElementAt(0).GetVectors(statesNubmber[0]);
             for (int i = 0; i < agents.Count; i++)
             {
                 bool[] satisfiedNew = null;
                 var ans = agents[i].DemoApply(statesNubmber[i], act, out satisfiedNew);
                 vectors.Add(ans.Value);
                 vectors2.Add(satisfiedNew);
                 newStateNumbers[i] = ans.Key;
             }

             bool[] firstVector = new bool[vectors.ElementAt(0).Length];
             bool[] secondVector = new bool[vectors.ElementAt(0).Length];

             for (int j = 0; j < firstVector.Length; j++)
             {

                 bool flag = false;
                 foreach (var vector in vectors)
                 {
                     if (vector[j] == true)
                     {
                         flag = true;
                         firstVector[j] = true;
                         if (oldVector[j] == false)
                             innovative = true;
                         break;

                     }
                 }
                 foreach (var vector2 in vectors2)
                 {
                     if (vector2[j] == true)
                     {
                         flag = true;
                         secondVector[j] = true;
                     }
                 }


             }
             bool f = true;
             while (f)
             {
                 f = false;
                 foreach (PPOrder order in Distributed_Landmarks_Detection.necessaryPPOrders)
                 {
                     if (firstVector[order.lendmark1.index] && !secondVector[order.lendmark1.index] && !firstVector[order.lendmark2.index])
                     {
                         firstVector[order.lendmark1.index] = false;
                         f = true;
                     }
                 }
             }
             for (int j = 0; j < firstVector.Length; j++)
             {
                 if (!firstVector[j])
                 {
                     m_h++;
                 }
             }
             if (m_h == 0)
                 Console.WriteLine("*");
             for (int i = 0; i < agents.Count; i++)
             {
                 agents[i].UpDateVectors(newStateNumbers[i], firstVector);
             }
             VertexHsp newVertexHsp = new VertexHsp(newStateNumbers, lplan, g + 1, m_h, cost, publicPredicateImplications);
             newVertexHsp.Parent = this;
             if (newVertexHsp.h == -1)
                 return null;
             newVertexHsp.lplan.Add(act);
             if (!innovative)
                 return null;
             return newVertexHsp;
         }*/
        bool threadContinueSearchFlag = true;
        public List<bool> threadAns = null;
        public bool GetGroundPlan(out string f, out List<string> finalPlan)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans: T-Grounding By Effects");
            finalPlan = new List<string>();
            threadContinueSearchFlag = true;
            Dictionary<string, State> agentState = new Dictionary<string, State>();
            Dictionary<int, List<string>> dicFinalPlan = new Dictionary<int, List<string>>();
            try
            {
                List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
                foreach (Action act in this.lplan)
                {

                    CompoundFormula effect = new CompoundFormula("and");
                    bool flag = false;
                    foreach (GroundedPredicate gp in act.HashEffects)
                    {
                        if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        {
                            //if (allKindOfpublicPreconditions.Contains(gp))
                            {
                                effect.AddOperand(gp);
                                flag = true;
                            }

                        }
                    }
                    if (flag)
                        lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
                }
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                threadAns = new List<bool>();
                List<Thread> threads = new List<Thread>();
                for (int i = 0; i < agents.Count; i++)
                {
                    State s = agentState[agents[i].name];
                    Agent agent = agents[i];
                    string name = agents[i].name;
                    Thread agentPlanning = new Thread(() => AgentsGrounding(agent, dicFinalPlan, name, s, lplan));
                    agentPlanning.Start();
                    threads.Add(agentPlanning);
                    //agentPlanning.Join();
                }
                foreach (Thread t in threads)
                {
                    t.Join(10 * 1000);
                }

                if (threadAns.Count != agents.Count)
                {
                    threadContinueSearchFlag = false;
                    foreach (Thread t in threads)
                    {
                        t.Join();
                    }
                    finalPlan = null;
                    f = "false";
                    return false;// RegGrounding(out finalPlan, out f);

                }
                for (int i = 0; i < dicFinalPlan.Count; i++)
                {
                    finalPlan.AddRange(dicFinalPlan[i]);
                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {

                        bool bUnsolvable = false;
                        ExternalPlanners externalPlanners = new ExternalPlanners();
                        ffLplan = externalPlanners.Plan(true,false, false, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable, null);
                        if (ffLplan != null)
                        {

                            List<string> todo = ffLplan;

                            foreach (string act in todo)
                            {
                                agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                                finalPlan.Add(act);
                                foreach (Agent a in agents)
                                {
                                    if (!a.name.Equals(agent.name))
                                    {

                                        agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                    }
                                }
                            }
                        }
                        else
                        {
                            finalPlan = null;
                            f = "false";
                            return false;// RegGrounding(out finalPlan, out f);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null)
                    {
                        finalPlan = null;
                        f = "false";
                        return false;// RegGrounding(out finalPlan, out f);

                    }
                }

                /* State sCurrent = new State(globalInitialState);
                 foreach (string sAction in finalPlan)
                 {
                     State sNew = sCurrent.Apply(sAction, joinDomain);
                     if (sNew == null)
                     {
                         string f;
                         List<string> path = null;
                         RegGrounding(out path, out f);
                         return path;
                     }
                     sCurrent = sNew;
                 }*/
                f = "true";
                return true;
            }
            catch (Exception ex)
            {
                finalPlan = null;
                f = "false";
                return false;// RegGrounding(out finalPlan, out f);
            }
        }
        public static Mutex mutex = new Mutex();
        public static Mutex mutex2 = new Mutex();
        public void AgentsGrounding(Agent agent, Dictionary<int, List<string>> finalPlan, string m_agentName, State agentState, List<KeyValuePair<string, CompoundFormula>> m_lplan)
        {
            List<string> ffLplan = null;
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            mutex2.WaitOne();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>(m_lplan);
            // Dictionary<string, int> map = new Dictionary<string, int>(AdvancedLandmarkProjectionPlaner.map);
            mutex2.ReleaseMutex();
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            int counter = 0;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);
                if (agentName.Equals(m_agentName))
                {
                    if (!threadContinueSearchFlag)
                        return;

                    mutex.WaitOne();
                    finalPlan.Add(counter, new List<string>());
                    mutex.ReleaseMutex();
                    bool bUnsolvable = false;
                    //ExternalPlanners externalPlanners = new ExternalPlanners();
                    //ffLplan = externalPlanners.FFPlan(agent.domain, agent.problem, agentState, goalFormula, agent.m_actions, 3 * 1000, out bUnsolvable);

                    List<Predicate> localGoal = goalFormula.GetAllPredicates().ToList();
                    hsp = new HSPHeuristic(agents[map[eff.Key]].m_actions, localGoal, false);
                    forwardSearch = new ForwardSearchPlanner(agents[map[eff.Key]].m_actions, hsp, 3);
                    List<Action> todo = forwardSearch.Plan(agentState, localGoal);
                    if (todo == null)
                    {
                        bUnsolvable = false;
                        ExternalPlanners externalPlanners = new ExternalPlanners();
                        ffLplan = externalPlanners.FFPlan(agent.domain, agent.problem, agentState, goalFormula, agent.m_actions, 3 * 1000, out bUnsolvable);
                        if (ffLplan != null)
                        {
                            todo = ffLplan.Select(act => agents[map[eff.Key]].domain.mapActionNameToAction[act]).ToList();
                        }
                    }

                    if (todo != null)
                    {
                        foreach (string act in todo.Select(act=>act.Name))
                        {
                            bool flag = agentState.FullApplyII(agent.domain.mapActionNameToAction[act]);
                            if (!flag || !threadContinueSearchFlag)
                                return;
                            mutex.WaitOne();
                            finalPlan[counter].Add(act);
                            mutex.ReleaseMutex();
                        }

                    }
                    else
                    {
                        return;
                    }

                }
                else
                {
                    agentState.FullApplyFormulaEffect(goalFormula);
                }
                counter++;
            }
            mutex.WaitOne();
            threadAns.Add(true);
            mutex.ReleaseMutex();
        }
        public bool RegGrounding(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in this.lplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                    {
                        effect.AddOperand(gp);
                        flag = true;
                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);

                /* HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                 foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                 {
                     if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                     {
                         foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                             mutex.Add(mgp);
                     }
                 }
                
                 foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                 {
                     if (agentState[agentName].m_lPredicates.Contains(publicPos))
                     {
                         if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                             goalFormula.AddOperand(publicPos);
                     }
                 }
                  * */
                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                ffLplan = externalPlanners.Plan(true, false, false, agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable, null);

                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string act in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }

                }
                else
                {
                    Program.KillPlanners();
                    return GroundingActions(out finalPlan, out fault);
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                /*  HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                  foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                  {
                      if (a.MutuallyExclusive.ContainsKey(gp))
                      {
                          foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                              mutex.Add(mgp);
                      }
                  }
                  foreach (GroundedPredicate publicPos in a.PublicPredicates)
                  {
                      if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                          agentGoal[a.name].AddOperand(publicPos);
                  }*/
            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.Plan(true, useFd, false, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable, null);

                    //ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {
                        Program.KillPlanners();
                        return GroundingActions(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return GroundingActions(out finalPlan, out fault);
                }
            }

            return true;


        }
        public bool GroundingActions(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans: Grounding By Actions");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<Action> lplan = new List<Action>();
            foreach (Action act in this.lplan)
            {
                lplan.Add(act);
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (Action act in lplan)
            {
                agentName = act.agent;
                goalFormula = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.Preconditions.GetAllPredicates())
                {
                    goalFormula.AddOperand(gp);
                }

                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                ffLplan = externalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string localAct in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[localAct]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(localAct);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {
                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[localAct], a.Predicates);
                            }
                        }
                    }
                    State state = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act.Name]);
                    if (state == null)
                    {
                        return false;
                    }
                    agentState[agentName] = state;
                    finalPlan.Add(act.Name);
                    foreach (Agent a in agents)
                    {
                        if (!a.name.Equals(agentName))
                        {

                            agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act.Name], a.Predicates);
                        }
                    }
                }
                else
                {
                    Program.KillPlanners();
                    return false;
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    if (true)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }

            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.Plan(true, useFd, false, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable, null);

                    if (ffLplan != null)
                    {
                        List<string> todo = ffLplan;
                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {
                        Program.KillPlanners();
                        return false;
                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return false;

                }
            }

            return true;


        }
        public void ComputePreferActions()
        {
            HashSet<GroundedPredicate> pubFact = new HashSet<GroundedPredicate>();
            preferdAction = new HashSet<string>();
            foreach (Agent agent in agents)
            {
                agent.GetPublicPreRelax(statesNubmber.ElementAt(map[agent.name]), pubFact);
            }
            foreach (Agent agent in agents)
            {
                var set = agent.ComputePreferActions(pubFact);
                foreach (var actName in set)
                {
                    preferdAction.Add(actName);
                }
            }
        }

        public bool PublicCanDo(Action act)
        {
            foreach (GroundedPredicate pre in act.HashPrecondition)
            {
                //if (JointPublicPredicates2.Contains(pre.Negate()))
                //  return false;
            }
            return true;
        }
        public int ComputeHsp()
        {

            HashSet<GroundedPredicate> publicSet = new HashSet<GroundedPredicate>();
            HashSet<GroundedPredicate> tmpPublicSet = new HashSet<GroundedPredicate>();
            foreach (Agent agent in agents)
            {
                HashSet<GroundedPredicate> tmp = agent.InitHspGraph(statesNubmber.ElementAt(map[agent.name]));
                foreach (var gp in tmp)
                {
                    if (!publicSet.Contains(gp))
                    {
                        publicSet.Add(gp);
                    }
                }
            }

            bool flag2 = true;
            int level = 2;
            while (flag2)
            {
                flag2 = false;
                bool isGlobalGoal = true; ;
                foreach (Agent agent in agents)
                {
                    bool isLocalGoal;
                    KeyValuePair<bool, HashSet<GroundedPredicate>> tmp = agent.UpdateHspGraph(publicSet, level, out isLocalGoal);
                    if (!isLocalGoal)
                    {
                        isGlobalGoal = false;
                    }
                    if (tmp.Key == true)
                        flag2 = true;
                    foreach (var gp in tmp.Value)
                    {
                        if (!publicSet.Contains(gp))
                        {
                            tmpPublicSet.Add(gp);
                        }
                    }
                }
                if (isGlobalGoal)
                {
                    flag2 = false;
                }
                else
                {
                    foreach (GroundedPredicate addGp in tmpPublicSet)
                    {
                        publicSet.Add(addGp);
                    }
                }
                level++;
            }
            List<int[]> vecAns = new List<int[]>();
            foreach (Agent agent in agents)
            {
                vecAns.Add(agent.PotentialGoalToAchieve());
            }
            bool flag;
            int sum = 0;
            int max = 0;
            for (int i = 0; i < vecAns.ElementAt(0).Length; i++)
            {
                flag = false;
                int cost = -1;
                foreach (int[] vec in vecAns)
                {
                    if (vec[i] != -1)
                    {
                        cost = vec[i];
                        flag = true;
                        break;
                    }
                }
                if (!flag)
                {
                    return -1; ;
                }
                sum += cost;
                if (cost > max)
                    max = cost;
            }
            // if (sum == 0)
            //   Console.WriteLine("8");
            return sum;
        }
        public int ComputeFF_h(bool[] landmarksVector)
        {
            HashSet<GroundedPredicate> publicSet = new HashSet<GroundedPredicate>();
            HashSet<GroundedPredicate> tmpPublicSet = new HashSet<GroundedPredicate>();
            foreach (Agent agent in agents)
            {
                HashSet<GroundedPredicate> tmp = agent.InitHspGraph(statesNubmber.ElementAt(map[agent.name]));
                foreach (var gp in tmp)
                {
                    if (!publicSet.Contains(gp))
                    {
                        publicSet.Add(gp);
                    }
                }
            }

            bool flag2 = true;
            int level = 2;
            while (flag2)
            {
                flag2 = false;
                bool isGlobalGoal = true; ;
                foreach (Agent agent in agents)
                {
                    bool isLocalGoal;
                    KeyValuePair<bool, HashSet<GroundedPredicate>> tmp = agent.UpdateHspGraph(publicSet, level, out isLocalGoal);
                    if (!isLocalGoal)
                    {
                        isGlobalGoal = false;
                    }
                    if (tmp.Key == true)
                        flag2 = true;
                    foreach (var gp in tmp.Value)
                    {
                        if (!publicSet.Contains(gp))
                        {
                            tmpPublicSet.Add(gp);
                        }
                    }
                }
                if (isGlobalGoal)
                {
                    flag2 = false;
                }
                else
                {
                    foreach (GroundedPredicate addGp in tmpPublicSet)
                    {
                        publicSet.Add(addGp);
                    }
                }
                level++;

                if (!flag2 && !isGlobalGoal)
                    return -1;
            }
            HashSet<GroundedPredicate> publicGoals = new HashSet<GroundedPredicate>();
            foreach (Agent agent in agents)
            {
                var items = agent.GetPublicfactsGoals();
                foreach (GroundedPredicate publicGoal in items)
                {
                    publicGoals.Add(publicGoal);
                }
            }
            foreach (Agent agent in agents)
            {
                agent.InitRelaxtionPlan();
            }
            flag2 = true;
            while (flag2)
            {
                flag2 = false;
                HashSet<GroundedPredicate> newPublicGoals = new HashSet<GroundedPredicate>();
                string ans = "";
                foreach (Agent agent in agents)
                {

                    string localAns;
                    var pGoals = agent.UpDateRelaxtionPlan(publicGoals, out localAns);
                    foreach (var gp in pGoals)
                        newPublicGoals.Add(gp);
                    if (localAns.Equals("fail"))
                        return -1;
                    if (localAns.Equals("continue"))
                        flag2 = true;


                }
                if (publicGoals.Count > 0)
                    return -1;
                publicGoals = newPublicGoals;
            }
            int count = 0;
            foreach (Agent agent in agents)
            {
                count += agent.GetRelaxPlanSize();
            }
            /*
            List<bool[]> vectors = new List<bool[]>();
            foreach (Agent agent in agents)
            {
                vectors.Add(agent.SatisfactiedLandmarksOnRelaxPlan(landmarksVector));
            }
            bool sat = false;
            int notSat = 0;
            for (int i = 0; i < landmarksVector.Length; i++)
            {
                sat = false;
                foreach (bool[] vec in vectors)
                {
                    if (vec[i])
                    {
                        sat = true;
                        break;
                    }
                }
                if (!sat)
                {
                    notSat++;
                }
            }
            //if (notSat > 0)
            //Console.WriteLine("*");
            return count + notSat;*/
            return count;
        }
        private bool planToGoalI_I(out List<string> finalPlan, out string fault)
        {
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in this.lplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        effect.AddOperand(gp);
                }
                lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            Dictionary<CompoundFormula, HashSet<CompoundFormula>> cfPositiveImplications = new Dictionary<CompoundFormula, HashSet<CompoundFormula>>();
            Dictionary<CompoundFormula, HashSet<CompoundFormula>> cfNegativeImplications = new Dictionary<CompoundFormula, HashSet<CompoundFormula>>();


            int z = -1;
            HashSet<CompoundFormula> set1 = null;
            HashSet<CompoundFormula> set2 = null;
            HashSet<CompoundFormula> prevItem = null;
            foreach (HashSet<CompoundFormula> h in publicPredicateImplications)
            {
                if (z == -1)
                {
                    prevItem = h;
                    z++;
                    continue;
                }
                set1 = new HashSet<CompoundFormula>();
                foreach (CompoundFormula cf in h)
                {
                    if (!prevItem.Contains(cf))
                    {
                        set1.Add(cf);
                    }
                }
                set2 = new HashSet<CompoundFormula>();
                foreach (CompoundFormula cf in prevItem)
                {
                    if (!h.Contains(cf))
                    {
                        set2.Add(cf);
                    }
                }
                if ((cfPositiveImplications.ContainsKey(lplan[z].Value) || cfNegativeImplications.ContainsKey(lplan[z].Value)))
                {
                    if (set1.Count != 0 || set2.Count != 0)
                    {
                        return planToGoal_ffToFormoula(out finalPlan, out fault);
                    }
                    else
                    {
                        prevItem = h;
                        z++;
                        continue;
                    }
                }
                cfPositiveImplications.Add(lplan[z].Value, set1);


                cfNegativeImplications.Add(lplan[z].Value, set2);
                prevItem = h;
                z++;
            }



            HashSet<CompoundFormula> set = new HashSet<CompoundFormula>();
            foreach (CompoundFormula cf in publicPredicateImplications[0])
            {
                set.Add(cf);
            }
            /*Queue<KeyValuePair<string, CompoundFormula>> lplanQueue = new Queue<KeyValuePair<string, CompoundFormula>>();
            foreach (var item in lplan)
            {
                lplanQueue.Enqueue(item);
            }*/

            List<Dictionary<string, List<CompoundFormula>>> lplanSteps = new List<Dictionary<string, List<CompoundFormula>>>();
            Dictionary<string, List<CompoundFormula>> courentSet = null;
            HashSet<CompoundFormula> postiveEff = null;
            HashSet<CompoundFormula> negtiveEff = null;
            while (lplan.Count > 0)
            {
                postiveEff = new HashSet<CompoundFormula>();
                negtiveEff = new HashSet<CompoundFormula>();
                List<CompoundFormula> courentItemList = new List<CompoundFormula>();
                courentSet = new Dictionary<string, List<CompoundFormula>>();
                KeyValuePair<string, CompoundFormula> firstItem = lplan[0];
                lplan.RemoveAt(0);
                courentItemList.Add(firstItem.Value);
                courentSet.Add(firstItem.Key, new List<CompoundFormula>());
                courentSet[firstItem.Key].Add(firstItem.Value);
                foreach (var negEff in cfNegativeImplications[firstItem.Value])
                {
                    negtiveEff.Add(negEff);
                }
                foreach (var posEff in cfPositiveImplications[firstItem.Value])
                {
                    postiveEff.Add(posEff);
                }

                for (int i = 0; i < lplan.Count; i++)
                {
                    KeyValuePair<string, CompoundFormula> nextItem = lplan[i];
                    bool flag = true;
                    if (set.Contains(nextItem.Value))
                    {
                        foreach (CompoundFormula cf in courentItemList)
                        {
                            if (cfNegativeImplications[nextItem.Value].Contains(cf))
                            {
                                flag = false;
                                break;
                            }
                        }
                        if (flag)
                        {
                            if (negtiveEff.Contains(nextItem.Value))
                                flag = false;
                            if (flag)
                            {
                                for (int j = 0; j < i; j++)
                                {
                                    if (cfNegativeImplications[nextItem.Value].Contains(lplan[j].Value))
                                    {
                                        flag = false;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    else
                    {
                        flag = false;
                    }
                    if (flag)
                    {
                        foreach (var negEff in cfNegativeImplications[nextItem.Value])
                        {
                            negtiveEff.Add(negEff);
                        }
                        foreach (var posEff in cfPositiveImplications[nextItem.Value])
                        {
                            postiveEff.Add(posEff);
                        }

                        if (!courentSet.ContainsKey(nextItem.Key))
                            courentSet.Add(nextItem.Key, new List<CompoundFormula>());

                        courentSet[nextItem.Key].Add(nextItem.Value);
                        courentItemList.Add(nextItem.Value);
                        lplan.RemoveAt(i);
                        i--;
                    }
                }
                lplanSteps.Add(courentSet);
                foreach (CompoundFormula negEff in postiveEff)
                {
                    if (!set.Contains(negEff))
                        set.Add(negEff);
                }
                foreach (CompoundFormula posEff in negtiveEff)
                {
                    if (set.Contains(posEff))
                        set.Remove(posEff);
                }
            }

            /* foreach (var itemA in lplanSteps)
             {
                 foreach (var itemB in itemA)
                 {
                     foreach (var itemC in itemB.Value)
                     {
                         KeyValuePair<string, CompoundFormula> kvp = new KeyValuePair<string, CompoundFormula>(itemB.Key, itemC);
                         lplan.Add(kvp);
                     }
                 }
             }*/

            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {

                bool admisabiliy = false;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }



                foreach (var courentSteps in lplanSteps)
                {
                    foreach (var courentGoal in courentSteps)
                    {

                        List<Predicate> localGoal = new List<Predicate>();
                        foreach (CompoundFormula cf in courentGoal.Value)
                        {
                            localGoal.AddRange(cf.GetAllPredicates());
                        }
                        string agentName = courentGoal.Key;
                        HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                        foreach (GroundedPredicate gp in localGoal)
                        {
                            if (agents[0].MutuallyExclusive.ContainsKey(gp))
                            {
                                foreach (GroundedPredicate mgp in agents[0].MutuallyExclusive[gp])
                                    mutex.Add(mgp);
                            }
                        }
                        foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                        {
                            if (agentState[agentName].m_lPredicates.Contains(publicPos))
                            {
                                if (!mutex.Contains(publicPos) && !localGoal.Contains(publicPos.Negate()))
                                    localGoal.Add(publicPos);
                            }
                        }

                        hsp = new HSPHeuristic(agents[map[agentName]].m_actions, localGoal, admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agents[map[agentName]].m_actions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[agentName], localGoal);
                        foreach (Action act in todo)
                        {
                            agentState[agentName] = agentState[agentName].ApplyII(act);
                            finalPlan.Add(act.Name);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agentName))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(act, a.Predicates);
                                }
                            }
                        }
                    }
                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;
                        /* foreach (var state in agentState.Values)
                         {
                             if (state.m_lPredicates.Contains(goalPredicate))
                             {
                                 sat = true;
                                 break;
                             }
                         }*/
                        if (true)//!sat)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                    HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                    {
                        if (a.MutuallyExclusive.ContainsKey(gp))
                        {
                            foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                                mutex.Add(mgp);
                        }
                    }
                    foreach (GroundedPredicate publicPos in a.PublicPredicates)
                    {
                        if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                            agentGoal[a.name].AddOperand(publicPos);
                    }
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        foreach (Action act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(act);
                            finalPlan.Add(act.Name);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                //return false;
                return planToGoalIIII(out finalPlan, out fault);
            }
        }
        private bool planToGoalI_II(out List<string> finalPlan, out string fault)
        {
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in this.lplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        effect.AddOperand(gp);
                }
                lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            Dictionary<CompoundFormula, HashSet<CompoundFormula>> cfMakeThis = new Dictionary<CompoundFormula, HashSet<CompoundFormula>>();
            HashSet<CompoundFormula> set = new HashSet<CompoundFormula>();
            int z = -1;
            bool div = true;
            foreach (HashSet<CompoundFormula> h in publicPredicateImplications)
            {
                if (z == -1)
                {
                    foreach (CompoundFormula cf in h)
                    {
                        set.Add(cf);
                    }
                    z++;
                    continue;
                }
                HashSet<CompoundFormula> setBox = new HashSet<CompoundFormula>();
                foreach (CompoundFormula cf in h)
                {
                    if (!set.Contains(cf))
                    {
                        setBox.Add(cf);
                        set.Add(cf);
                    }
                }
                if (cfMakeThis.ContainsKey(lplan[z].Value))
                {
                    div = false;
                    break;
                }
                cfMakeThis.Add(lplan[z].Value, setBox);
                z++;
            }
            if (div)
            {
                set = new HashSet<CompoundFormula>();
                foreach (CompoundFormula cf in publicPredicateImplications[0])
                {
                    set.Add(cf);
                }
                int count = 0;
                List<Dictionary<string, List<CompoundFormula>>> pert = new List<Dictionary<string, List<CompoundFormula>>>();
                int c = lplan.Count;
                for (int j = 0; j < c; j++)
                {
                    Dictionary<string, List<CompoundFormula>> d = new Dictionary<string, List<CompoundFormula>>();
                    List<KeyValuePair<string, CompoundFormula>> del = new List<KeyValuePair<string, CompoundFormula>>();
                    foreach (KeyValuePair<string, CompoundFormula> cf in lplan)
                    {
                        if (set.Contains(cf.Value))
                        {
                            if (!d.ContainsKey(cf.Key))
                                d.Add(cf.Key, new List<CompoundFormula>());
                            d[cf.Key].Add(cf.Value);
                            del.Add(cf);
                        }

                    }
                    foreach (var dele in del)
                    {
                        if (cfMakeThis.ContainsKey(dele.Value))
                        {
                            foreach (CompoundFormula cf in cfMakeThis[dele.Value])
                            {
                                set.Add(cf);
                            }
                        }
                        lplan.Remove(dele);
                    }
                    pert.Add(d);
                }
                foreach (var itemA in pert)
                {
                    foreach (var itemB in itemA)
                    {
                        foreach (var itemC in itemB.Value)
                        {
                            KeyValuePair<string, CompoundFormula> kvp = new KeyValuePair<string, CompoundFormula>(itemB.Key, itemC);
                            lplan.Add(kvp);
                        }
                    }
                }
            }
            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {
                //return true;
                bool admisabiliy = true;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                CompoundFormula goalFormula = new CompoundFormula("and");
                string agentName = lplan[0].Key;
                for (int i = 0; i < lplan.Count; i++)
                //foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
                {
                    KeyValuePair<string, CompoundFormula> eff = lplan[i];
                    if (eff.Key.Equals(agentName) && i < (lplan.Count - 1))
                    {
                        goalFormula.AddOperand(eff.Value);
                        continue;
                    }
                    if (eff.Key.Equals(agentName) && i == (lplan.Count - 1))
                    {
                        goalFormula.AddOperand(eff.Value);
                    }
                    level++;

                    HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                    {
                        if (agents[0].MutuallyExclusive.ContainsKey(gp))
                        {
                            foreach (GroundedPredicate mgp in agents[0].MutuallyExclusive[gp])
                                mutex.Add(mgp);
                        }
                    }
                    foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                    {
                        if (agentState[agentName].m_lPredicates.Contains(publicPos))
                        {
                            if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                                goalFormula.AddOperand(publicPos);
                        }
                    }

                    List<string> todo = Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                    foreach (string act in todo)
                    {
                        agentState[agentName] = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }


                    if (!(eff.Key.Equals(agentName) && i == (lplan.Count - 1)))
                    {
                        i--;
                    }
                    agentName = eff.Key;
                    goalFormula = new CompoundFormula("and");

                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;
                        /* foreach (var state in agentState.Values)
                         {
                             if (state.m_lPredicates.Contains(goalPredicate))
                             {
                                 sat = true;
                                 break;
                             }
                         }*/
                        if (true)//!sat)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                    HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                    {
                        foreach (GroundedPredicate mgp in agents[0].MutuallyExclusive[gp])
                            mutex.Add(mgp);
                    }
                    foreach (GroundedPredicate publicPos in a.PublicPredicates)
                    {
                        if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                            agentGoal[a.name].AddOperand(publicPos);
                    }
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                        // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        List<string> todo = Plan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return planToGoal_ffToFormoula(out finalPlan, out fault);
            }
        }
        private bool planToGoalI_III(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            Dictionary<Predicate, HashSet<Predicate>> GlobalMutuallyExclusive = new Dictionary<Predicate, HashSet<Predicate>>();
            try
            {
                foreach (Agent a in agents)
                {
                    foreach (var pair in a.MutuallyExclusive)
                    {
                        if (!GlobalMutuallyExclusive.ContainsKey(pair.Key))
                        {
                            GlobalMutuallyExclusive[pair.Key] = new HashSet<Predicate>();
                        }
                        foreach (GroundedPredicate gp in pair.Value)
                        {
                            GlobalMutuallyExclusive[pair.Key].Add(gp);
                            if (!GlobalMutuallyExclusive.ContainsKey(gp))
                            {
                                GlobalMutuallyExclusive[gp] = new HashSet<Predicate>();
                            }
                            GlobalMutuallyExclusive[gp].Add(pair.Key);
                        }
                    }
                }
                foreach (Action act in this.lplan)
                {
                    CompoundFormula effect = new CompoundFormula("and");
                    foreach (GroundedPredicate gp in act.HashEffects)
                    {
                        if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                            effect.AddOperand(gp);
                    }
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
                }
                Dictionary<CompoundFormula, HashSet<CompoundFormula>> cfPositiveImplications = new Dictionary<CompoundFormula, HashSet<CompoundFormula>>();
                Dictionary<CompoundFormula, HashSet<CompoundFormula>> cfNegativeImplications = new Dictionary<CompoundFormula, HashSet<CompoundFormula>>();
                /*StreamWriter sw = new StreamWriter("publicFormoula.txt");
                foreach (var v in lplan)
                {
                    sw.WriteLine(v.Key + "   " + v.Value.ToString());
                }
                sw.Close();
                    */
                int z = -1;
                HashSet<CompoundFormula> set1 = null;
                HashSet<CompoundFormula> set2 = null;
                HashSet<CompoundFormula> prevItem = null;
                foreach (HashSet<CompoundFormula> h in publicPredicateImplications)
                {
                    if (z == -1)
                    {
                        prevItem = h;
                        z++;
                        continue;
                    }
                    set1 = new HashSet<CompoundFormula>();
                    foreach (CompoundFormula cf in h)
                    {
                        if (!prevItem.Contains(cf))
                        {
                            set1.Add(cf);
                        }
                    }
                    set2 = new HashSet<CompoundFormula>();
                    foreach (CompoundFormula cf in prevItem)
                    {
                        if (!h.Contains(cf))
                        {
                            set2.Add(cf);
                        }
                    }
                    if ((cfPositiveImplications.ContainsKey(lplan[z].Value) || cfNegativeImplications.ContainsKey(lplan[z].Value)))
                    {
                        if (set1.Count != 0 || set2.Count != 0)
                        {
                            return planToGoal_ffToFormoula(out finalPlan, out fault);
                        }
                        else
                        {
                            prevItem = h;
                            z++;
                            continue;
                        }
                    }
                    cfPositiveImplications.Add(lplan[z].Value, set1);


                    cfNegativeImplications.Add(lplan[z].Value, set2);
                    prevItem = h;
                    z++;
                }


                HashSet<CompoundFormula> set = new HashSet<CompoundFormula>();
                foreach (CompoundFormula cf in publicPredicateImplications[0])
                {
                    set.Add(cf);
                }
                /*Queue<KeyValuePair<string, CompoundFormula>> lplanQueue = new Queue<KeyValuePair<string, CompoundFormula>>();
                foreach (var item in lplan)
                {
                    lplanQueue.Enqueue(item);
                }*/

                List<Dictionary<string, List<CompoundFormula>>> lplanSteps = new List<Dictionary<string, List<CompoundFormula>>>();
                Dictionary<string, List<CompoundFormula>> courentSet = null;
                HashSet<CompoundFormula> postiveEff = null;
                HashSet<CompoundFormula> negtiveEff = null;
                while (lplan.Count > 0)
                {
                    Dictionary<string, List<CompoundFormula>> agentPos = new Dictionary<string, List<CompoundFormula>>();
                    postiveEff = new HashSet<CompoundFormula>();
                    negtiveEff = new HashSet<CompoundFormula>();
                    List<GroundedPredicate> MutexSet = new List<GroundedPredicate>();
                    List<CompoundFormula> courentItemList = new List<CompoundFormula>();
                    courentSet = new Dictionary<string, List<CompoundFormula>>();
                    KeyValuePair<string, CompoundFormula> firstItem = lplan[0];
                    lplan.RemoveAt(0);
                    foreach (GroundedPredicate gp in firstItem.Value.GetAllPredicates())
                    {
                        MutexSet.Add((GroundedPredicate)gp.Negate());
                        if (GlobalMutuallyExclusive.ContainsKey(gp))
                        {
                            foreach (GroundedPredicate mgp in GlobalMutuallyExclusive[gp])
                                MutexSet.Add(mgp);
                        }
                    }
                    if (!agentPos.ContainsKey(firstItem.Key))
                        agentPos.Add(firstItem.Key, new List<CompoundFormula>());
                    foreach (var posEff in cfPositiveImplications[firstItem.Value])
                    {
                        agentPos[firstItem.Key].Add(posEff);
                    }
                    courentItemList.Add(firstItem.Value);
                    courentSet.Add(firstItem.Key, new List<CompoundFormula>());
                    courentSet[firstItem.Key].Add(firstItem.Value);
                    foreach (var negEff in cfNegativeImplications[firstItem.Value])
                    {
                        negtiveEff.Add(negEff);
                    }
                    foreach (var posEff in cfPositiveImplications[firstItem.Value])
                    {
                        postiveEff.Add(posEff);
                    }
                    bool f2 = true;

                    while (f2)
                    {
                        f2 = false;
                        for (int i = 0; i < lplan.Count; i++)
                        {
                            KeyValuePair<string, CompoundFormula> nextItem = lplan[i];
                            bool flag = true;
                            if (set.Contains(nextItem.Value) || (agentPos.ContainsKey(nextItem.Key) && agentPos[nextItem.Key].Contains(nextItem.Value)))
                            {
                                foreach (CompoundFormula cf in courentItemList)
                                {
                                    if (cfNegativeImplications[nextItem.Value].Contains(cf))
                                    {
                                        flag = false;
                                        break;
                                    }
                                }
                                if (flag)
                                {
                                    if (negtiveEff.Contains(nextItem.Value))
                                        flag = false;
                                    foreach (GroundedPredicate gp in nextItem.Value.GetAllPredicates())
                                    {
                                        if (MutexSet.Contains(gp))
                                        {
                                            flag = false;
                                            break;
                                        }
                                    }
                                    if (flag)
                                    {
                                        for (int j = 0; j < i; j++)
                                        {
                                            if (cfNegativeImplications[nextItem.Value].Contains(lplan[j].Value))
                                            {
                                                flag = false;
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                            else
                            {
                                flag = false;
                            }
                            if (flag)
                            {
                                foreach (var negEff in cfNegativeImplications[nextItem.Value])
                                {
                                    negtiveEff.Add(negEff);
                                }
                                foreach (var posEff in cfPositiveImplications[nextItem.Value])
                                {
                                    postiveEff.Add(posEff);
                                }

                                if (!courentSet.ContainsKey(nextItem.Key))
                                    courentSet.Add(nextItem.Key, new List<CompoundFormula>());

                                courentSet[nextItem.Key].Add(nextItem.Value);
                                courentItemList.Add(nextItem.Value);
                                lplan.RemoveAt(i);
                                if (!agentPos.ContainsKey(nextItem.Key))
                                    agentPos.Add(nextItem.Key, new List<CompoundFormula>());
                                foreach (var posEff in cfPositiveImplications[nextItem.Value])
                                {
                                    agentPos[nextItem.Key].Add(posEff);
                                }


                                foreach (GroundedPredicate gp in nextItem.Value.GetAllPredicates())
                                {
                                    MutexSet.Add((GroundedPredicate)gp.Negate());
                                    if (GlobalMutuallyExclusive.ContainsKey(gp))
                                    {
                                        foreach (GroundedPredicate mgp in GlobalMutuallyExclusive[gp])
                                            MutexSet.Add(mgp);
                                    }
                                }

                                f2 = true;
                                i--;
                            }
                        }
                    }
                    lplanSteps.Add(courentSet);
                    foreach (CompoundFormula negEff in postiveEff)
                    {
                        if (!set.Contains(negEff))
                            set.Add(negEff);
                    }
                    foreach (CompoundFormula posEff in negtiveEff)
                    {
                        if (set.Contains(posEff))
                            set.Remove(posEff);
                    }
                }
                finalPlan = new List<string>();
                fault = "";
                int level = 0;


                bool admisabiliy = false;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }


                Thread planTheard = null;
                foreach (var courentSteps in lplanSteps)
                {
                    foreach (var courentGoal in courentSteps)
                    {
                        CompoundFormula localGoal = new CompoundFormula("and");
                        foreach (CompoundFormula cf in courentGoal.Value)
                        {
                            localGoal.AddOperand(cf);
                        }
                        string agentName = courentGoal.Key;
                        /* HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                         foreach (GroundedPredicate gp in localGoal.GetAllPredicates())
                         {
                             if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                             {
                                 foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                                     mutex.Add(mgp);
                             }
                         }
                         foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                         {
                             if (agentState[agentName].m_lPredicates.Contains(publicPos))
                             {
                                 if (!mutex.Contains(publicPos) && !localGoal.GetAllPredicates().Contains(publicPos.Negate()))
                                     localGoal.AddOperand(publicPos);
                             }
                         }*/
                        bool bUnsolvable = false;
                        ExternalPlanners externalPlanners = new ExternalPlanners();
                        ffLplan = externalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], localGoal, agents[map[agentName]].m_actions, 1 * 60 * 1000, out bUnsolvable);
                        //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                        if (ffLplan != null)
                        {
                            List<string> todo = ffLplan;
                            foreach (string act in todo)
                            {
                                agentState[agentName] = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                                finalPlan.Add(act);
                                foreach (Agent a in agents)
                                {
                                    if (!a.name.Equals(agentName))
                                    {

                                        agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                                    }
                                }
                            }
                        }
                        else
                        {
                            //planTheard.Abort();
                            Program.KillPlanners();
                            return planToGoal_ffToFormoula(out finalPlan, out fault);

                        }
                    }
                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;

                        if (true)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                    /* HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                     foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                     {
                         if (a.MutuallyExclusive.ContainsKey(gp))
                         {
                             foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                                 mutex.Add(mgp);
                         }
                     }
                     foreach (GroundedPredicate publicPos in a.PublicPredicates)
                     {
                         if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                             agentGoal[a.name].AddOperand(publicPos);
                     }*/
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                        // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        bool bUnsolvable = false;
                        ExternalPlanners externalPlanners = new ExternalPlanners();
                        ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 1 * 60 * 1000, out bUnsolvable);
                        if (ffLplan != null)
                        {
                            List<string> todo = ffLplan;

                            //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                            foreach (string act in todo)
                            {
                                agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                                finalPlan.Add(act);
                                foreach (Agent a in agents)
                                {
                                    if (!a.name.Equals(agent.name))
                                    {

                                        agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                    }
                                }
                            }
                        }
                        else
                        {
                            //planTheard.Abort();
                            Program.KillPlanners();
                            return planToGoal_ffToFormoula(out finalPlan, out fault);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                Program.KillPlanners();
                return planToGoal_ffToFormoula(out finalPlan, out fault);
            }

        }
        private bool planToGoal(out List<string> finalPlan, out string fault)
        {
            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {

                //return true;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                foreach (Action publicAction in lplan)
                {
                    level++;
                    if (!Contains(agentState[publicAction.agent], publicAction.HashPrecondition))
                    {
                        CompoundFormula localGoal = new CompoundFormula((CompoundFormula)publicAction.Preconditions);
                        foreach (GroundedPredicate publicPos in agents[map[publicAction.agent]].PublicPredicates)
                        {
                            if (agentState[publicAction.agent].m_lPredicates.Contains(publicPos))
                                localGoal.AddOperand(publicPos);
                        }
                        List<string> todo = Plan(agents[map[publicAction.agent]].domain, agents[map[publicAction.agent]].problem, agentState[publicAction.agent], localGoal, agents[map[publicAction.agent]].m_actions);

                        foreach (string act in todo)
                        {
                            agentState[publicAction.agent] = agentState[publicAction.agent].Apply(act);
                            finalPlan.Add(act);
                            /*  foreach (Agent a in agents)
                              {
                                  if (!a.name.Equals(publicAction.agent))
                                  {
                                      agentState[a.name] = agentState[a.name].ApplyEffect(d.mapActionNameToAction[act], a.Predicates);
                                  }
                              }*/
                        }
                    }
                    agentState[publicAction.agent] = agentState[publicAction.agent].ApplyII(publicAction);
                    finalPlan.Add(publicAction.Name);
                    foreach (Agent a in agents)
                    {
                        if (!a.name.Equals(publicAction.agent))
                        {
                            agentState[a.name] = agentState[a.name].ApplyEffect(publicAction, a.Predicates);
                        }
                    }
                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        /*  bool sat = false;
                        foreach (var state in agentState.Values)
                        {
                            if (state.m_lPredicates.Contains(goalPredicate))
                            {
                                sat = true;
                                break;
                            }
                        }
                        if (!sat)*/
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }
                        foreach (GroundedPredicate publicPos in a.PublicPredicates)
                        {
                            if (agentState[a.name].m_lPredicates.Contains(publicPos))
                                agentGoal[a.name].AddOperand(publicPos);
                        }
                    }
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        List<string> todo = Plan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].Apply(act);
                            finalPlan.Add(act);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return false;
            }
        }

        private bool planToGoalII(out List<string> finalPlan, out string fault)
        {
            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {
                //return true;
                bool admisabiliy = false;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                foreach (Action publicAction in lplan)
                {
                    level++;
                    if (!Contains(agentState[publicAction.agent], publicAction.HashPrecondition))
                    {
                        //List<string> todo = Plan(d, p, agentState[publicAction.agent], publicAction.Preconditions);
                        hsp = new HSPHeuristic(agents[map[publicAction.agent]].privateActions, publicAction.HashPrecondition, admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agents[map[publicAction.agent]].privateActions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[publicAction.agent], publicAction.HashPrecondition);
                        foreach (Action act in todo)
                        {
                            agentState[publicAction.agent] = agentState[publicAction.agent].ApplyII(act);
                            finalPlan.Add(act.Name);
                        }
                    }
                    agentState[publicAction.agent] = agentState[publicAction.agent].ApplyII(publicAction);
                    finalPlan.Add(publicAction.Name);
                    foreach (Agent a in agents)
                    {
                        if (!a.name.Equals(publicAction.agent))
                        {
                            agentState[a.name] = agentState[a.name].ApplyEffect(publicAction, a.PublicPredicates);
                        }
                    }
                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;
                        foreach (var state in agentState.Values)
                        {
                            if (state.m_lPredicates.Contains(goalPredicate))
                            {
                                sat = true;
                                break;
                            }
                        }
                        if (!sat)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        hsp = new HSPHeuristic(agent.privateActions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agent.privateActions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        foreach (Action act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(act);
                            finalPlan.Add(act.Name);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return false;
            }
        }
        private bool planToGoalIII(out List<string> finalPlan, out string fault)
        {
            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {
                //return true;
                bool admisabiliy = true;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                foreach (Action publicAction in lplan)
                {
                    level++;
                    if (!Contains(agentState[publicAction.agent], publicAction.HashPrecondition))
                    {
                        //List<string> todo = Plan(d, p, agentState[publicAction.agent], publicAction.Preconditions);
                        List<Predicate> localGoal = new List<Predicate>(publicAction.HashPrecondition);
                        foreach (GroundedPredicate publicPos in agents[map[publicAction.agent]].PublicPredicates)
                        {
                            if (agentState[publicAction.agent].m_lPredicates.Contains(publicPos))
                                localGoal.Add(publicPos);
                        }

                        hsp = new HSPHeuristic(agents[map[publicAction.agent]].m_actions, localGoal, admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agents[map[publicAction.agent]].m_actions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[publicAction.agent], localGoal);
                        foreach (Action act in todo)
                        {
                            agentState[publicAction.agent] = agentState[publicAction.agent].ApplyII(act);
                            finalPlan.Add(act.Name);
                        }
                    }
                    agentState[publicAction.agent] = agentState[publicAction.agent].ApplyII(publicAction);
                    finalPlan.Add(publicAction.Name);
                    foreach (Agent a in agents)
                    {
                        if (!a.name.Equals(publicAction.agent))
                        {
                            agentState[a.name] = agentState[a.name].ApplyEffect(publicAction, a.PublicPredicates);
                        }
                    }
                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;
                        /*  foreach (var state in agentState.Values)
                          {
                              if (state.m_lPredicates.Contains(goalPredicate))
                              {
                                  sat = true;
                                  break;
                              }
                          }*/
                        if (true)//!sat)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                    foreach (GroundedPredicate publicPos in a.PublicPredicates)
                    {
                        if (agentState[a.name].m_lPredicates.Contains(publicPos))
                            agentGoal[a.name].AddOperand(publicPos);
                    }
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        foreach (Action act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(act);
                            finalPlan.Add(act.Name);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return false;
            }
        }

        private bool planToGoalIIII(out List<string> finalPlan, out string fault)
        {
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in this.lplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        effect.AddOperand(gp);
                }
                lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            // foreach()
            {

            }

            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {

                //return true;
                bool admisabiliy = false;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                CompoundFormula goalFormula = new CompoundFormula("and");
                string agentName = "";
                foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
                {
                    level++;
                    // if (!Contains(agentState[eff.Key], publicAction.HashPrecondition))
                    {
                        //List<string> todo = Plan(d, p, agentState[publicAction.agent], publicAction.Preconditions);
                        List<Predicate> localGoal = new List<Predicate>();
                        foreach (GroundedPredicate p in eff.Value.GetAllPredicates())
                        {
                            if (agents[map[eff.Key]].PublicPredicates.Contains(p))
                                localGoal.Add(p);
                        }
                        HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                        foreach (GroundedPredicate gp in localGoal)
                        {
                            if (agents[0].MutuallyExclusive.ContainsKey(gp))
                            {
                                foreach (GroundedPredicate mgp in agents[0].MutuallyExclusive[gp])
                                    mutex.Add(mgp);
                            }
                        }
                        foreach (GroundedPredicate publicPos in agents[map[eff.Key]].PublicPredicates)
                        {
                            if (agentState[eff.Key].m_lPredicates.Contains(publicPos))
                            {
                                if (!mutex.Contains(publicPos) && !localGoal.Contains(publicPos.Negate()))
                                    localGoal.Add(publicPos);
                            }
                        }

                        hsp = new HSPHeuristic(agents[map[eff.Key]].m_actions, localGoal, admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agents[map[eff.Key]].m_actions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[eff.Key], localGoal);
                        foreach (Action act in todo)
                        {
                            agentState[eff.Key] = agentState[eff.Key].ApplyII(act);
                            finalPlan.Add(act.Name);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(eff.Key))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(act, a.Predicates);
                                }
                            }
                        }
                    }

                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;
                        /*foreach (var state in agentState.Values)
                        {
                            if (state.m_lPredicates.Contains(goalPredicate))
                            {
                                sat = true;
                                break;
                            }
                        }*/
                        if (true)//!sat)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                    /*HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                    {
                        foreach (GroundedPredicate mgp in agents[0].MutuallyExclusive[gp])
                            mutex.Add(mgp);
                    }*/
                    foreach (GroundedPredicate publicPos in a.PublicPredicates)
                    {
                        if (agentState[a.name].m_lPredicates.Contains(publicPos))// && !mutex.Contains(publicPos))
                            agentGoal[a.name].AddOperand(publicPos);
                    }
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp, 30);
                        List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        foreach (Action act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(act);
                            finalPlan.Add(act.Name);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return false;
            }
        }
        private bool planToGoal_ffToFormoula(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in this.lplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        effect.AddOperand(gp);
                }
                lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);

                HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                {
                    if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                    {
                        foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                            mutex.Add(mgp);
                    }
                }
                /*
                foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                {
                    if (agentState[agentName].m_lPredicates.Contains(publicPos))
                    {
                        if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                            goalFormula.AddOperand(publicPos);
                    }
                }
                 * */
                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                ffLplan = externalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);

                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string act in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {
                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }

                }
                else
                {
                    Program.KillPlanners();
                    return planToGoal_ffToActions(out finalPlan, out fault);
                    throw new Exception();
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                {
                    if (a.MutuallyExclusive.ContainsKey(gp))
                    {
                        foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                            mutex.Add(mgp);
                    }
                }
                /* foreach (GroundedPredicate publicPos in a.PublicPredicates)
                 {
                     if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                         agentGoal[a.name].AddOperand(publicPos);
                 }*/
            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {
                        //planTheard.Abort();
                        Program.KillPlanners();
                        return planToGoal_ffToActions(out finalPlan, out fault);

                        return planToGoalIIII(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null) return false;
            }

            return true;


        }
        private bool planToGoal_ffToActions(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();

            try
            {
                int count = 0;
                finalPlan = new List<string>();
                fault = "";
                int level = 0;

                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                CompoundFormula goalFormula = new CompoundFormula("and");
                string agentName;
                foreach (Action act in lplan)
                {
                    agentName = act.agent;
                    goalFormula = new CompoundFormula((CompoundFormula)act.Preconditions);

                    HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                    {
                        if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                        {
                            foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                                mutex.Add(mgp);
                        }
                    }
                    /*
                    foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                    {
                        if (agentState[agentName].m_lPredicates.Contains(publicPos))
                        {
                            if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                                goalFormula.AddOperand(publicPos);
                        }
                    }
                     * */
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);

                    //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                    //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                    //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                    //planTheard.Start();
                    //planTheard.Join(3000);
                    //planTheard.Abort();
                    if (ffLplan != null)
                    {
                        List<string> todo = ffLplan;
                        foreach (string localAct in todo)
                        {
                            State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[localAct]);
                            if (s == null)
                                throw new Exception();
                            agentState[agentName] = s;
                            finalPlan.Add(localAct);
                            /* foreach (Agent a in agents)
                             {
                                 if (!a.name.Equals(agentName))
                                 {

                                     agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                                 }
                             }*/
                        }
                        State state = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act.Name]);
                        if (state == null)
                            Console.WriteLine("*");
                        agentState[agentName] = state;
                        finalPlan.Add(act.Name);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act.Name], a.Predicates);
                            }
                        }
                    }
                    else
                    {
                        throw new Exception();
                    }


                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;
                        /* foreach (var state in agentState.Values)
                         {
                             if (state.m_lPredicates.Contains(goalPredicate))
                             {
                                 sat = true;
                                 break;
                             }
                         }*/
                        if (true)//!sat)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                    HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                    {
                        if (a.MutuallyExclusive.ContainsKey(gp))
                        {
                            foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                                mutex.Add(mgp);
                        }
                    }
                    /* foreach (GroundedPredicate publicPos in a.PublicPredicates)
                     {
                         if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                             agentGoal[a.name].AddOperand(publicPos);
                     }*/
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                        // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                        bool bUnsolvable = false;
                        ExternalPlanners externalPlanners = new ExternalPlanners();
                        ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                        if (ffLplan != null)
                        {

                            List<string> todo = ffLplan;

                            foreach (string act in todo)
                            {
                                agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                                finalPlan.Add(act);
                                foreach (Agent a in agents)
                                {
                                    if (!a.name.Equals(agent.name))
                                    {

                                        agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                    }
                                }
                            }
                        }
                        else
                        {
                            throw new Exception();
                            Program.KillPlanners();
                            return planToGoalIIII(out finalPlan, out fault);

                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                finalPlan = null;
                fault = "false";
                return false;
            }

        }
        private bool planToGoalIIIII(out List<string> finalPlan, out string fault)
        {
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in this.lplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        effect.AddOperand(gp);
                }
                lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {
                //return true;
                bool admisabiliy = true;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                CompoundFormula goalFormula = new CompoundFormula("and");
                string agentName = lplan[0].Key;
                for (int i = 0; i < lplan.Count; i++)
                //foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
                {
                    KeyValuePair<string, CompoundFormula> eff = lplan[i];
                    if (eff.Key.Equals(agentName) && i < (lplan.Count - 1))
                    {
                        goalFormula.AddOperand(eff.Value);
                        continue;
                    }
                    if (eff.Key.Equals(agentName) && i == (lplan.Count - 1))
                    {
                        goalFormula.AddOperand(eff.Value);
                    }
                    level++;

                    HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                    {
                        if (agents[0].MutuallyExclusive.ContainsKey(gp))
                        {
                            foreach (GroundedPredicate mgp in agents[0].MutuallyExclusive[gp])
                                mutex.Add(mgp);
                        }
                    }
                    foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                    {
                        if (agentState[agentName].m_lPredicates.Contains(publicPos))
                        {
                            if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                                goalFormula.AddOperand(publicPos);
                        }
                    }

                    List<string> todo = Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                    foreach (string act in todo)
                    {
                        agentState[agentName] = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }


                    if (!(eff.Key.Equals(agentName) && i == (lplan.Count - 1)))
                    {
                        i--;
                    }
                    agentName = eff.Key;
                    goalFormula = new CompoundFormula("and");

                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        bool sat = false;
                        /* foreach (var state in agentState.Values)
                         {
                             if (state.m_lPredicates.Contains(goalPredicate))
                             {
                                 sat = true;
                                 break;
                             }
                         }*/
                        if (true)//!sat)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }
                    HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                    foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                    {
                        foreach (GroundedPredicate mgp in agents[0].MutuallyExclusive[gp])
                            mutex.Add(mgp);
                    }
                    foreach (GroundedPredicate publicPos in a.PublicPredicates)
                    {
                        if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                            agentGoal[a.name].AddOperand(publicPos);
                    }
                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {
                        //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                        // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                        //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                        // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                        List<string> todo = Plan(agent.domain, agent.problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agent.domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return false;
            }
        }
        public static int LandmarksComparer(VertexHsp v1, VertexHsp v2)
        {
            if (v1.h2 == v2.h2)
            {
                if (v1.h > v2.h)
                {
                    return 1;
                }
                if (v1.h < v2.h)
                {
                    return -1;
                }
                if (v1.g == v2.g)
                {
                    /*if (v1.cost > v2.cost)
                        return 1;
                    if (v1.cost < v2.cost)
                        return -1;*/

                    return 0;
                }
                if (v1.g > v2.g)
                    return 1;
                else
                    return -1;



            }
            if (v1.h2 > v2.h2) return 1;
            return -1;

        }
        public static int HspComparer(VertexHsp v1, VertexHsp v2)
        {
            if (v1.h == v2.h)
            {
                if (v1.h2 > v2.h2)
                {
                    return 1;
                }
                if (v1.h2 < v2.h2)
                {
                    return -1;
                }
                if (v1.g == v2.g)
                {
                    /*if (v1.cost > v2.cost)
                        return 1;
                    if (v1.cost < v2.cost)
                        return -1;*/

                    return 0;
                }
                if (v1.g > v2.g)
                    return 1;
                else
                    return -1;



            }
            if (v1.h > v2.h) return 1;
            return -1;

        }
        public static int ComparerDouble(double v1, double v2)
        {
            if (v1 > v2) return 1;
            if (v1 > v2) return -1;
            return 0;

        }
        public static int ComparerOp(VertexHsp v1, VertexHsp v2)
        {
            if (v1.h == v2.h)
            {
                if (v1.g == v2.g)
                {
                    /*if (v1.cost > v2.cost)
                        return 1;
                    if (v1.cost < v2.cost)
                        return -1;*/

                    return 0;
                }
                if (v1.g > v2.g)
                    return -1;
                else
                    return 1;



            }
            if (v1.h > v2.h) return -1;
            return 1;

        }


        public static int ComparerII(VertexHsp v1, VertexHsp v2)
        {
            if ((v1.h + v1.g) == (v2.h + v2.g))
            {
                if (v1.h == v2.h)
                    return 0;
                if (v1.h > v2.h)
                    return 1;
                else
                    return -1;



            }
            if ((v1.h + v1.g) > (v2.h + v2.g)) return 1;
            return -1;

        }
        public static List<string> ReadPlan(MemoryStream ms)
        {
            List<string> lPlan = new List<string>();

            StreamReader sr = new StreamReader(ms);

            while (!sr.EndOfStream)
            {
                string sAction = sr.ReadLine().Trim().ToLower();
                if (sAction != "")
                    lPlan.Add(sAction);
            }
            sr.Close();
            return lPlan;



            List<string> lFilteredPlan = new List<string>();
            foreach (string sAction in lPlan)
            {
                if (sAction.Contains("-remove") ||
                    sAction.Contains("-translate"))
                    continue;
                if (sAction.Contains("-add"))
                    lFilteredPlan.Add(sAction.Replace("-add", ""));
                else
                    lFilteredPlan.Add(sAction);

            }

            return lFilteredPlan;
        }
        public static List<string> Plan(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions)
        {
            List<string> lPlan = new List<string>();



            d.Actions = privateActions;
            p.Goal = goal;

            MemoryStream msDomain = d.WriteSimpleDomain();
            MemoryStream problem_M_S = p.WriteSimpleProblem(curentState);




            Process planer = new Process();
            //planer.StartInfo.WorkingDirectory = @"C:\project\Planning 2 new\PDDLTEST\temp";
            planer.StartInfo.FileName = "ff.exe";
            //planer.StartInfo.Arguments += "-o dT.pddl -f pT.pddl";

            planer.StartInfo.UseShellExecute = false;
            planer.StartInfo.RedirectStandardInput = true;
            planer.StartInfo.RedirectStandardOutput = true;
            planer.Start();
            StreamReader srOps = new StreamReader(msDomain);


            planer.StandardInput.Write(srOps.ReadToEnd());
            srOps.Close();
            BinaryWriter b = new BinaryWriter(planer.StandardInput.BaseStream);
            b.Write('\0');

            StreamReader srFct = new StreamReader(problem_M_S);
            planer.StandardInput.Write(srFct.ReadToEnd());
            srFct.Close();

            b.Write('\0');
            //planer.StandardInput.Flush();

            planer.StandardInput.Close();

            /*if (!planer.WaitForExit(3000))//2 minutes max
            {
                planer.Kill();
            }*/
            //DateTime dtMid = DateTime.Now;


            string sOutput = planer.StandardOutput.ReadToEnd();
            /*int outputCharInt;
            bool f=true;
            while (f)
            {
                if((outputCharInt=planer.StandardOutput.Read()) != -1)
                {
                    sOutput += (char)outputCharInt;
                }
                else
                {
                    if (sOutput.Contains("time spent:"))
                        f=false;

                    if(DateTime.Now.Subtract(dtMid).TotalSeconds>5)
                    {
                        planer.Kill();
                        return null;
                    }
                }
            }
            */
            //Console.WriteLine(sOutput);
            MemoryStream planMs = new MemoryStream();
            if (sOutput.Contains("found legal plan as follows"))
            {
                string sPlan = sOutput.Substring(sOutput.IndexOf("found legal plan as follows"));
                string[] asPlan = sPlan.Split('\n');
                string sFinalPlan = "";
                for (int i = 2; i < asPlan.Length; i++)
                {
                    if (!asPlan[i].Contains(":"))
                        break;
                    sFinalPlan += asPlan[i].Substring(asPlan[i].IndexOf(':') + 2).Trim() + "\n";
                }
                StreamWriter sw = new StreamWriter(planMs);
                sw.WriteLine(sFinalPlan);
                sw.Close();
            }
            else
            {
                if (sOutput.Contains("goal can be simplified to TRUE"))
                {

                    return new List<string>();
                }
                else
                {


                    return null;

                }
            }


            lPlan = ReadPlan(new MemoryStream(planMs.ToArray()));

            return lPlan;

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
        public static List<string> ReadPlan(string sPath)
        {
            List<string> lPlan = new List<string>();
            string sPlanFile = "plan.txt";
            if (File.Exists(sPath + sPlanFile))
            {
                StreamReader sr = new StreamReader(sPath + sPlanFile);
                while (!sr.EndOfStream)
                {
                    string sAction = sr.ReadLine().Trim().ToLower();
                    if (sAction != "")
                        lPlan.Add(sAction);
                }
                sr.Close();
            }
            else if (File.Exists(sPath + "mipsSolution.soln"))
            {
                StreamReader sr = new StreamReader(sPath + "mipsSolution.soln");
                while (!sr.EndOfStream)
                {
                    string sLine = sr.ReadLine().Trim().ToLower();
                    if (sLine.Count() > 0 && !sLine.StartsWith(";"))
                    {
                        int iStart = sLine.IndexOf("(");
                        int iEnd = sLine.IndexOf(")");
                        sLine = sLine.Substring(iStart + 1, iEnd - iStart - 1).Trim();
                        lPlan.Add(sLine);
                    }
                }
                sr.Close();
            }
            else if (File.Exists(sPath + "sas_plan"))
            {
                StreamReader sr = new StreamReader(sPath + "sas_plan");
                while (!sr.EndOfStream)
                {
                    string sLine = sr.ReadLine().Trim().ToLower();
                    sLine = sLine.Replace("(", "");
                    sLine = sLine.Replace(")", "");
                    if (sLine.Count() > 0 && !sLine.StartsWith(";"))
                    {
                        int iStart = sLine.IndexOf("(");
                        sLine = sLine.Substring(iStart + 1).Trim();
                        lPlan.Add(sLine);
                    }
                }
                sr.Close();
            }
            else
            {
                /*
                if (SDRPlanner.AddTagRefutationToGoal)
                {
                    SDRPlanner.AddTagRefutationToGoal = false;
                    lPlan = Plan(sPath, pssCurrent, out sChosen);
                }
                else
                 * */

                //throw new Exception("ended");

                return null;
            }

            List<string> lFilteredPlan = new List<string>();
            foreach (string sAction in lPlan)
            {
                if (sAction.Contains("-remove") ||
                    sAction.Contains("-translate"))
                    continue;
                if (sAction.Contains("-add"))
                    lFilteredPlan.Add(sAction.Replace("-add", ""));
                else
                    lFilteredPlan.Add(sAction);

            }

            return lFilteredPlan;
        }
        public static List<string> PlanThread(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions)
        {
            bool bUnsolvable = false;
            ExternalPlanners externalPlanners = new ExternalPlanners();
            ffLplan = externalPlanners.FFPlan(d, p, curentState, goal, privateActions, 3000, out bUnsolvable);
            return ffLplan;
        }
        public static List<string> PlanTry(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions)
        {
            try
            {
                List<string> lPlan = new List<string>();



                d.Actions = privateActions;
                p.Goal = goal;



                DirectoryInfo di = new DirectoryInfo(@"PDDLTEST\temp\");
                foreach (FileInfo fi in di.GetFiles())
                    if ((fi.Name.StartsWith("dT") || fi.Name.StartsWith("pT")))// && fi.Name.EndsWith(".pddl"))
                        fi.Delete();

                d.WriteSimpleDomain(@"PDDLTEST\temp\dT.pddl");

                p.WriteSimpleProblem(@"PDDLTEST\temp\pT.pddl", curentState);


                Process planer = new Process();
                planer.StartInfo.WorkingDirectory = @"PDDLTEST\temp";
                planer.StartInfo.FileName = @"lpg-td-1.0.exe";
                planer.StartInfo.Arguments += @"-o dT.pddl -f pT.pddl -quality -noout";
                planer.StartInfo.UseShellExecute = false;
                // planer.StartInfo.RedirectStandardInput = true;
                planer.StartInfo.RedirectStandardOutput = true;

                planer.Start();
                if (!planer.WaitForExit(10000000))//2 minutes max
                {
                    planer.Kill();
                }
                string sOutput = planer.StandardOutput.ReadToEnd();
                //Console.WriteLine(sOutput);
                MemoryStream planMs = new MemoryStream();
                if (sOutput.Contains("Plan computed:"))
                {
                    string sPlan = sOutput.Substring(sOutput.IndexOf("Plan computed:"));
                    string[] asPlan = sPlan.Split('\n');
                    string sFinalPlan = "";
                    for (int i = 2; i < asPlan.Length; i++)
                    {
                        if (!asPlan[i].Contains(":"))
                            break;
                        // sFinalPlan +
                        string actionName = asPlan[i].Substring(asPlan[i].IndexOf('(') + 1, asPlan[i].IndexOf(')') - (asPlan[i].IndexOf('(') + 1)).Trim();
                        lPlan.Add(actionName.ToLower());
                    }
                    StreamWriter sw = new StreamWriter(planMs);
                    sw.WriteLine(sFinalPlan);
                    sw.Close();
                }
                else if (sOutput.Contains("goal can be simplified to TRUE"))
                {
                    planer.Close();
                    return new List<string>();
                }
                else
                {
                    planer.Close();
                    return null;
                }

                planer.Close();
                //lPlan = ReadPlan(new MemoryStream(planMs.ToArray()));
                return lPlan;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return null;
            }
        }
        public override bool Equals(object obj)
        {
            if (obj is VertexHsp)
            {
                VertexHsp v = (VertexHsp)obj;
                if (JointPublicPredicates.Count != v.JointPublicPredicates.Count)
                    return false;
                foreach (Predicate p in JointPublicPredicates)
                    if (!v.JointPublicPredicates.Contains(p))
                        return false;
                return true;
            }
            return false;
        }
        int m_iHashCode = 0;
        public override int GetHashCode()
        {
            if (m_iHashCode == 0)
            {
                foreach (Predicate p in JointPublicPredicates)
                    m_iHashCode += p.GetHashCode();
            }
            return m_iHashCode;
        }
        public override string ToString()
        {
            return ID + " Landmark_h = " + h2 + " Hsp_h = " + h + " g = " + g;
        }
        private bool hspGroupPlaner(out List<string> finalPlan, out string fault)
        {
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<List<Action>> groupingAction = new List<List<Action>>();
            Dictionary<int, List<string>> dicFinalPlan = new Dictionary<int, List<string>>();
            foreach (Action act in this.lplan)
            {
                List<Action> tmp = new List<Action>();
                tmp.Add(act);
                groupingAction.Add(tmp);
            }
            Group(groupingAction);

            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            Dictionary<string, CompoundFormula> agentFormula = null;
            foreach (List<Action> actions in groupingAction)
            {
                agentFormula = new Dictionary<string, CompoundFormula>();
                bool flag = false;
                foreach (Action act in actions)
                {
                    if (!agentFormula.ContainsKey(act.agent))
                        agentFormula.Add(act.agent, new CompoundFormula("and"));

                    foreach (GroundedPredicate gp in act.HashEffects)
                    {
                        if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        {
                            //if (allKindOfpublicPreconditions.Contains(gp))
                            // if(!gp.Negation)
                            {
                                agentFormula[act.agent].AddOperand(gp);
                                flag = true;
                            }

                        }
                    }
                }
                foreach (var agFormula in agentFormula)
                {
                    if (agFormula.Value.Operands.Count > 0)
                        lplan.Add(new KeyValuePair<string, CompoundFormula>(agFormula.Key, agFormula.Value));
                }
            }
            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {

                //return true;
                bool admisabiliy = false;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                CompoundFormula goalFormula = new CompoundFormula("and");
                string agentName = "";
                foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
                {
                    level++;
                    {
                        List<Predicate> localGoal = new List<Predicate>();
                        foreach (GroundedPredicate p in eff.Value.GetAllPredicates())
                        {
                            if (agents[map[eff.Key]].PublicPredicates.Contains(p))
                            {
                                localGoal.Add(p);
                                goalFormula.AddOperand(p);
                            }
                        }

                        hsp = new HSPHeuristic(agents[map[eff.Key]].m_actions, localGoal, admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agents[map[eff.Key]].m_actions, hsp, 3);
                        List<Action> todo = forwardSearch.Plan(agentState[eff.Key], localGoal);
                        if(todo==null)
                        {
                            bool bUnsolvable = false;
                            ExternalPlanners externalPlanners = new ExternalPlanners();
                            ffLplan = externalPlanners.Plan(true,useFd, false, agents[map[eff.Key]].domain, agents[map[eff.Key]].problem, agentState[eff.Key], goalFormula, agents[map[eff.Key]].m_actions, 3 * 1000, out bUnsolvable, null);
                            if(ffLplan!=null)
                            {
                                todo = ffLplan.Select(act => agents[map[eff.Key]].domain.mapActionNameToAction[act]).ToList();
                            }
                        }
                        foreach (Action act in todo)
                        {
                            agentState[eff.Key] = agentState[eff.Key].ApplyII(act);
                            finalPlan.Add(act.Name);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(eff.Key))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(act, a.Predicates);
                                }
                            }
                        }
                    }

                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();
                bool isFinalGoal = true;
                foreach (Agent a in agents)
                {  
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        if (!agentState[a.name].Contains(goalPredicate))
                            isFinalGoal = false;
                        if (true)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }

                }
                if (Program.thereIsPrivateGoal || !isFinalGoal)
                {
                    foreach (var agent in agents)
                    {
                            bool bUnsolvable = false;
                            ExternalPlanners externalPlanners = new ExternalPlanners();
                            ffLplan = externalPlanners.Plan(true, useFd, false, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable, null);

                            if (ffLplan != null)
                            {

                                List<string> todo = ffLplan;

                                foreach (string act in todo)
                                {
                                    agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                                    finalPlan.Add(act);
                                    foreach (Agent a in agents)
                                    {
                                        if (!a.name.Equals(agent.name))
                                        {

                                            agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                        }
                                    }
                                }
                            }
                            else
                            {
                                Program.KillPlanners();
                                return GroundingActions(out finalPlan, out fault);

                            }
                        
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return false;
            }
        }
        public void Group(List<List<Action>> groupingActions)
        {
            for (int i = 1; i < groupingActions.Count; i++)
            {
                for (int j = 0; j < groupingActions[i].Count; j++)
                {
                    Action courentAction = groupingActions[i][j];
                    int nextIndex = i;
                    for (int k = i - 1; k > -1; k--)
                    {
                        bool canPass = true;
                        foreach (Action beforeMeAction in groupingActions[k])
                        {
                            foreach (GroundedPredicate pre in courentAction.HashPrecondition)
                            {
                                if (beforeMeAction.HashEffects.Contains(pre))
                                {
                                    canPass = false;
                                    break;
                                }
                            }
                            if (!canPass)
                                break;
                            foreach (GroundedPredicate pre in courentAction.HashEffects)
                            {
                                if (beforeMeAction.HashPrecondition.Contains(pre.Negate()))
                                {
                                    canPass = false;
                                    break;
                                }
                            }
                            if (!canPass)
                                break;

                        }
                        if (!canPass)
                            break;
                        nextIndex = k;
                    }
                    if (nextIndex < i)
                    {
                        groupingActions[i].RemoveAt(j);
                        j--;
                        groupingActions[nextIndex].Add(courentAction);
                    }
                }
            }
        }

        private bool hspRegPlaner(out List<string> finalPlan, out string fault,int time)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans: Grounding By Effects");
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (Action act in this.lplan)
            {
                CompoundFormula effect = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        effect.AddOperand(gp);
                }
                lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }

            finalPlan = new List<string>();
            fault = "";
            int level = 0;
            try
            {

                //return true;
                bool admisabiliy = false;
                Dictionary<string, State> agentState = new Dictionary<string, State>();
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                CompoundFormula goalFormula = new CompoundFormula("and");
                string agentName = "";
                foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
                {
                    level++;
                       {
                        List<Predicate> localGoal = new List<Predicate>();
                        foreach (GroundedPredicate p in eff.Value.GetAllPredicates())
                        {
                            if (agents[map[eff.Key]].PublicPredicates.Contains(p))
                            {
                                localGoal.Add(p);
                                goalFormula.AddOperand(p);
                            }
                        }
            

                        hsp = new HSPHeuristic(agents[map[eff.Key]].m_actions, localGoal, admisabiliy);
                        forwardSearch = new ForwardSearchPlanner(agents[map[eff.Key]].m_actions, hsp, 3);
                        List<Action> todo = forwardSearch.Plan(agentState[eff.Key], localGoal);
                        if (todo == null)
                        {
                            bool bUnsolvable = false;
                            ExternalPlanners externalPlanners = new ExternalPlanners();
                            ffLplan = externalPlanners.Plan(true, useFd, false, agents[map[eff.Key]].domain, agents[map[eff.Key]].problem, agentState[eff.Key], goalFormula, agents[map[eff.Key]].m_actions, time * 1000, out bUnsolvable, null);
                            if (ffLplan != null)
                            {
                                todo = ffLplan.Select(act => agents[map[eff.Key]].domain.mapActionNameToAction[act]).ToList();
                            }
                        }
                        foreach (Action act in todo)
                        {
                            agentState[eff.Key] = agentState[eff.Key].ApplyII(act);
                            finalPlan.Add(act.Name);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(eff.Key))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(act, a.Predicates);
                                }
                            }
                        }
                    }

                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();
                bool isFinalGoal = true;
                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        if (!agentState[a.name].Contains(goalPredicate))
                            isFinalGoal = false;
                        if (true)
                        {
                            agentGoal[a.name].AddOperand(goalPredicate);
                        }

                    }

                }
                if (Program.thereIsPrivateGoal || !isFinalGoal)
                {
                    foreach (var agent in agents)
                    {
                        {
                             bool bUnsolvable = false;
                            ExternalPlanners externalPlanners = new ExternalPlanners();
                            ffLplan = externalPlanners.Plan(true, useFd, false, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable, null);
                            if (ffLplan != null)
                            {
                                List<string> todo = ffLplan;
                                foreach (string act in todo)
                                {
                                    agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                                    finalPlan.Add(act);
                                    foreach (Agent a in agents)
                                    {
                                        if (!a.name.Equals(agent.name))
                                        {

                                            agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                        }
                                    }
                                }
                            }
                            else
                            {
                                Program.KillPlanners();
                                return GroundingActions(out finalPlan, out fault);

                            }
                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null) return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                fault = level.ToString();
                return false;
            }
        }



    }


    class ComapareVertexHsp : IComparer<VertexHsp>
    {
        public static IComparer<VertexHsp> GetVertexHspComparer()
        {
            return (IComparer<VertexHsp>)new ComapareVertexHsp();
        }

        int IComparer<VertexHsp>.Compare(VertexHsp VertexHsp1, VertexHsp VertexHsp2)
        {
            VertexHsp v1 = (VertexHsp)VertexHsp1;
            VertexHsp v2 = (VertexHsp)VertexHsp2;

            if (v1.h == v2.h)
            {
                if (v1.g == v2.g)
                {

                    return 0;
                }
                if (v1.g > v2.g)
                    return 1;
                else
                    return -1;



            }
            if (v1.h > v2.h) return 1;
            return -1;
        }


    }
}
