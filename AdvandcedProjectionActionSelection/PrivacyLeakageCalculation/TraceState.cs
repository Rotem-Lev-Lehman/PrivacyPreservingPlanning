using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation
{
    class TraceState
    {
        public int agentID { get; set; }
        public int senderID { get; set; }
        public int stateID { get; set; }
        public int parentID { get; set; }
        public int iparentID { get; set; }
        public int cost { get; set; }
        public int heuristic { get; set; }
        public List<int> privateIDs { get; set; }
        public List<int> values { get; set; }
        public string context { get; set; }
        private static int nextStateID = 0;
        private static int amountOfStates = 0;
        public static readonly string SendingMessage = "sending";
        public static readonly string ReceivedMessage = "received";
        public static readonly string InitMessage = "init";
        public static readonly string GoalVerifiedMessage = "goal-verified";

        public TraceState(int agentID, int senderID, int stateID, int parentID, int iparentID, int cost, int heuristic, List<int> privateIDs, List<int> values, string context)
        {
            this.agentID = agentID;
            this.senderID = senderID;
            this.stateID = stateID;
            this.parentID = parentID;
            this.iparentID = iparentID;
            this.cost = cost;
            this.heuristic = heuristic;
            this.privateIDs = privateIDs;
            this.values = values;
            this.context = context;
        }

        public static void ClearTraces()
        {
            nextStateID = 0;
        }

        public static int GetNextStateID()
        {
            int curr = nextStateID;
            nextStateID++;
            amountOfStates++;
            return curr;
        }

        public static bool TimeToFlashStates()
        {
            if (amountOfStates > 500)
            {
                amountOfStates = 0;
                return true;
            }
            return false;
        }

        /*public static TraceState CreateTraceState(Agent agent, Tuple<Action, Predicate> chosen)
        {
            int agentID = agent.getID();
            int senderID = agentID;
            int stateID = nextStateID;
            nextStateID++;

        }
        */
    }
}
