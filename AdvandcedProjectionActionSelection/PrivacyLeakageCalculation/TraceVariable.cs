using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation
{
    class TraceVariable
    {
        public int agentID { get; set; }
        public int varID { get; set; }
        public string varName { get; set; }
        public bool isPrivate { get; set; }
        public int range { get; set; }
        public Dictionary<int, string> vals { get; set; }
        private static Dictionary<int, Dictionary<Predicate, TraceVariable>> agentsVariables = new Dictionary<int, Dictionary<Predicate, TraceVariable>>();

        public TraceVariable(int agentID, int varID, string varName, bool isPrivate, int range, Dictionary<int, string> vals)
        {
            this.agentID = agentID;
            this.varID = varID;
            this.varName = varName;
            this.isPrivate = isPrivate;
            this.range = range;
            this.vals = vals;
        }

        public static Tuple<List<TraceVariable>, int> getVariables(Agent agent)
        {
            HashSet<GroundedPredicate> publicPredicates = new HashSet<GroundedPredicate>(agent.PublicPredicates);
            HashSet<GroundedPredicate> allPredicates = new HashSet<GroundedPredicate>(agent.Predicates);
            HashSet<GroundedPredicate> privatePredicates = new HashSet<GroundedPredicate>(allPredicates.Except(publicPredicates));

            RemoveNegations(publicPredicates);
            RemoveNegations(privatePredicates);

            int agentID = agent.getID();
            int varID = 0;

            Dictionary<Predicate, TraceVariable> myVariables = new Dictionary<Predicate, TraceVariable>();
            agentsVariables.Add(agentID, myVariables);

            List<TraceVariable> variables = createVariables(myVariables, publicPredicates, agentID, varID, false);
            int amountOfPublicVariables = variables.Count;
            varID = variables.Count;
            variables.AddRange(createVariables(myVariables, privatePredicates, agentID, varID, true));

            Tuple<List<TraceVariable>, int> tuple = new Tuple<List<TraceVariable>, int>(variables, amountOfPublicVariables);
            return tuple;
        }

        public static void ClearTraces()
        {
            agentsVariables = new Dictionary<int, Dictionary<Predicate, TraceVariable>>();
        }

        private static List<TraceVariable> createVariables(Dictionary<Predicate, TraceVariable> myVariables, HashSet<GroundedPredicate> predicates, int agentID, int startVarID, bool isPrivate)
        {
            List<TraceVariable> variables = new List<TraceVariable>();
            foreach(GroundedPredicate p in predicates)
            {
                Dictionary<int, string> vals = new Dictionary<int, string>();
                vals.Add(0, p.ToString());
                Predicate negation = p.Negate();
                vals.Add(1, negation.ToString());

                TraceVariable variable = new TraceVariable(agentID, startVarID, "var" + startVarID, isPrivate, 2, vals);
                variables.Add(variable);
                myVariables.Add(p, variable);

                startVarID++;
            }
            return variables;
        }

        private static void RemoveNegations(HashSet<GroundedPredicate> set)
        {
            List<GroundedPredicate> removeList = new List<GroundedPredicate>();
            foreach(GroundedPredicate groundedPredicate in set)
            {
                if (groundedPredicate.Negation)
                {
                    removeList.Add(groundedPredicate);
                }
            }

            foreach(GroundedPredicate p in removeList)
            {
                set.Remove(p);
            }
        }

        public static TraceVariable GetVariable(int agentID, Predicate p)
        {
            if (!agentsVariables[agentID].ContainsKey(p))
            {
                return null;
            }
            return agentsVariables[agentID][p];
        }

        public static Dictionary<Predicate, TraceVariable> GetVariablesDict(int agentID)
        {
            return agentsVariables[agentID];
        }
    }
}
