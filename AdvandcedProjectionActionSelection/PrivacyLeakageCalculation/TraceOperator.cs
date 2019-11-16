using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation
{
    class TraceOperator
    {
        public int agentID { get; set; }
        public int ownerID { get; set; }
        public string opName { get; set; }
        public bool isPrivate { get; set; }
        public int opID { get; set; }
        public int cost { get; set; }
        public Dictionary<int, int> pre { get; set; }
        public Dictionary<int, int> eff { get; set; }

        public TraceOperator(int agentID, int ownerID, string opName, bool isPrivate, int opID, int cost, Dictionary<int, int> pre, Dictionary<int, int> eff)
        {
            this.agentID = agentID;
            this.ownerID = ownerID;
            this.opName = opName;
            this.isPrivate = isPrivate;
            this.opID = opID;
            this.cost = cost;
            this.pre = pre;
            this.eff = eff;
        }

        public static List<TraceOperator> getOperators(Agent agent, List<Action> publicActions, List<Action> privateActions)
        {
            List<TraceOperator> operators = new List<TraceOperator>();
            int agentID = agent.getID();
            int opID = 0;

            foreach(Action action in publicActions)
            {
                bool isPrivate = false;

                AddOperator(operators, agentID, agent, opID, action, isPrivate);
                
                opID++;
            }
            foreach (Action action in privateActions)
            {
                bool isPrivate = true;

                AddOperator(operators, agentID, agent, opID, action, isPrivate);

                opID++;
            }

            return operators;
        }

        private static void AddOperator(List<TraceOperator> operators, int agentID, Agent agent, int opID, Action action, bool isPrivate)
        {
            int ownerID = Agent.getID(action.agent);
            bool myOperation = ownerID == agentID;

            string opName = action.Name;
            int cost = 1;
            Dictionary<int, int> pre = new Dictionary<int, int>();
            initializeDict(agentID, pre, action.HashPrecondition, myOperation, agent);
            Dictionary<int, int> eff = new Dictionary<int, int>();
            initializeDict(agentID, eff, action.HashEffects, myOperation, agent);
            TraceOperator traceOperator = new TraceOperator(agentID, ownerID, opName, isPrivate, opID, cost, pre, eff);
            operators.Add(traceOperator);
        }

        public static void ClearTraces()
        {
            
        }

        private static void initializeDict(int agentID, Dictionary<int, int> dict, List<Predicate> predicates, bool myOperation, Agent agent)
        {
            foreach(Predicate p in predicates)
            {
                Predicate currP = p;
                bool artificial = false;
                if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                {
                    if (!myOperation)
                        continue;
                    artificial = true;
                }
                TraceVariable var;
                int val;
                if (!p.Negation)
                {
                    if (artificial)
                    {
                        currP = agent.ArtificialToPrivate[(GroundedPredicate)p];
                    }
                    var = TraceVariable.GetVariable(agentID, currP);
                    val = 0; //regular
                }
                else
                {
                    Predicate negation = p.Negate();
                    currP = negation;
                    if (artificial)
                    {
                        currP = agent.ArtificialToPrivate[(GroundedPredicate)negation];
                    }
                    var = TraceVariable.GetVariable(agentID, currP);
                    val = 1; //negation
                }
                if (var == null)
                    continue;
                int varID = var.varID;
                dict.Add(varID, val);
            }
        }
    }
}
