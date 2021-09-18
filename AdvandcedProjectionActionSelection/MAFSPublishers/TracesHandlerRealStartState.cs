using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    class TracesHandlerRealStartState : AHandleTraces
    {
        private bool gotToRealStartState;

        private int realStartStateTraceID;
        private Dictionary<string, int> realStartState_iparents;

        public TracesHandlerRealStartState()
        {
            gotToRealStartState = false;
        }

        public override bool usesRealStartState()
        {
            return true;
        }

        public override void FinishPlanning(List<string> highLevelPlan)
        {
            List<string> edittedPlan = EditPlan(highLevelPlan);
            foreach (Agent agent in agents)
            {
                //traces[agent].plan = highLevelPlan;
                traces[agent].plan = edittedPlan;
                AdvancedLandmarkProjectionPlaner.writeStatesToFile(agent, traces[agent]); //write the leftovers
                AdvancedLandmarkProjectionPlaner.writeSecondHalfOfJsonToFile(agent, traces[agent]);
            }
        }

        private List<string> EditPlan(List<string> highLevelPlan)
        {
            List<string> editted = new List<string>();
            foreach (string action in highLevelPlan)
            {
                editted.Add(action.Replace("_", " "));
            }
            return editted;
        }

        public override void PublishGoalState(MapsVertex goalVertex, MapsAgent goalFinder)
        {
            //int senderID = goalFinder.GetID();
            int stateID = TraceState.GetNextStateID();
            Dictionary<string, int> newIParents = new Dictionary<string, int>(goalVertex.publicParent.agent2iparent);

            TraceState parentState = goalVertex.publicParent.traceStateForPublicRevealedState;
            //int parentID = parentState.stateID;
            int cost = goalVertex.g;
            int heuristic = goalVertex.h_when_sent;
            string context = TraceState.GoalVerifiedMessage;

            foreach (MapsAgent agent in MapsPlanner.name2mapsAgent.Values)
            {
                int parentID = -1;
                if (agent.Equals(goalFinder))
                    parentID = parentState.stateID; //In the json, only the goal finder needs to have a value of the parent of the last state
                int senderID = agent.GetID();
                int iparent = GetIParent(goalVertex, agent);
                newIParents[agent.name] = iparent;

                iparent = -1; //The json of goal state needs to be with iparent of -1...
                WriteStateToTrace(goalVertex, agent, context, parentID, iparent, stateID, senderID, cost, heuristic, newIParents);
            }
        }

        public override void publishStartState(MapsAgent agent, MapsVertex startState, int stateID, Dictionary<string, int> iparents)
        {
            // don't do anything here...
        }

        public override void publishRealStartState(MapsAgent agent, MapsVertex realStartState, int stateID, Dictionary<string, int> iparents)
        {
            if (gotToRealStartState)
            {
                // Someone else published the real start state already, this is the recieved state...
                stateID = realStartStateTraceID;
                iparents = realStartState_iparents;
            }
            int senderID = -1;
            int parentID = -1;
            int iparentID = -1;
            int cost = 0;
            int heuristic = -1;
            string context = TraceState.InitMessage;
            //iparents[agent.name] = 0;
            iparents[agent.name] = iparentID;

            WriteStateToTrace(realStartState, agent, context, parentID, iparentID, stateID, senderID, cost, heuristic, iparents);

            realStartStateTraceID = stateID;
            realStartState_iparents = iparents;
            gotToRealStartState = true;
        }

        public override void publishState(MapsVertex vertex, MapsAgent senderAgent)
        {
            if (!gotToRealStartState)
            {
                // Only when we got to the real start state, we will start publishing regular states...
                return;
            }
            //int senderID = senderAgent.GetID();
            int senderID = -1; //The json of sent state needs to be with senderID of -1...
            int stateID = TraceState.GetNextStateID();
            TraceState parentState = vertex.publicParent.traceStateForPublicRevealedState;
            int iparent = GetIParent(vertex, senderAgent);
            Dictionary<string, int> newIParents = new Dictionary<string, int>(vertex.publicParent.agent2iparent); //as a sender, I will change the iParents dictionary to be a new dictionary.
            //newIParents[senderAgent.name] = iparent;
            newIParents[senderAgent.name] = stateID;

            string context = TraceState.SendingMessage;
            int parentID = parentState.stateID;
            int cost = vertex.g;
            int heuristic = vertex.h_when_sent;

            iparent = -1; //The json of sent state needs to be with iparent of -1...

            WriteStateToTrace(vertex, senderAgent, context, parentID, iparent, stateID, senderID, cost, heuristic, newIParents);
        }

        public override void RecieveState(MapsVertex recievedVertex, MapsAgent recievedAgent, MapsVertex sentVertex, MapsAgent senderAgent)
        {
            if (!gotToRealStartState)
            {
                // Only when we got to the real start state, we will start publishing regular states...
                return;
            }
            int senderID = senderAgent.GetID();
            int stateID = sentVertex.traceStateForPublicRevealedState.stateID;
            TraceState parentState = recievedVertex.publicParent.traceStateForPublicRevealedState;
            int iparent = GetIParent(recievedVertex, recievedAgent);
            Dictionary<string, int> newIParents = sentVertex.agent2iparent; //The sender already made a new dictionary, I shall update it and save it to myself too as it should be the same dictionary for this state.
            newIParents[recievedAgent.name] = iparent;

            string context = TraceState.ReceivedMessage;
            //int parentID = parentState.stateID;
            int parentID = -1; //The json of recieved state needs to be with parentID of -1...
            int cost = recievedVertex.g;
            int heuristic = recievedVertex.h_when_sent;

            WriteStateToTrace(recievedVertex, recievedAgent, context, parentID, iparent, stateID, senderID, cost, heuristic, newIParents);
        }

        private int GetIParent(MapsVertex vertex, MapsAgent agent)
        {
            MapsVertex parentState = vertex.publicParent;
            int iparent = parentState.agent2iparent[agent.name];
            if (parentState.traceStateForPublicRevealedState.senderID == agent.GetID())
            {
                iparent = parentState.traceStateForPublicRevealedState.stateID;
            }
            return iparent;
        }

        private void WriteStateToTrace(MapsVertex vertex, MapsAgent agent, string context, int parentID, int iparentID, int stateID, int senderID, int cost, int heuristic, Dictionary<string, int> newIParents)
        {
            int agentID = agent.GetID();
            List<int> privateIDs = GetPrivateIDs(vertex);
            List<int> values = GetValues(vertex, agent);

            TraceState writtenTraceState = new TraceState(agentID, senderID, stateID, parentID, iparentID, cost, heuristic, privateIDs, values, context);
            traces[agent.regularAgent].AddState(writtenTraceState);
            vertex.traceStateForPublicRevealedState = writtenTraceState;
            vertex.agent2iparent = newIParents;

            if (TraceState.TimeToFlashStates())
            {
                FlashStates();
            }
        }

        private void FlashStates()
        {
            foreach (Agent agent in agents)
            {
                AdvancedLandmarkProjectionPlaner.writeStatesToFile(agent, traces[agent]);
                traces[agent].ClearStates();
            }
        }

        private List<int> GetPrivateIDs(MapsVertex vertex)
        {
            List<int> privateIDs = new List<int>();
            foreach (Agent agent in agents)
            {
                privateIDs.Add(vertex.stateIndexes[agent.name]);
            }
            return privateIDs;
        }

        private List<int> GetValues(MapsVertex vertex, MapsAgent agent)
        {
            Dictionary<Predicate, TraceVariable> agentsVars = TraceVariable.GetVariablesDict(agent.GetID());
            List<int> values = new List<int>();
            HashSet<Predicate> predicates = GetCorrespondingAgentState(vertex, agent).m_lPredicates;
            foreach (Predicate p in agentsVars.Keys)
            {
                if (predicates.Contains(p))
                {
                    values.Add(0); //0 == true
                }
                else
                {
                    values.Add(1); //1 == false
                }
            }
            return values;
        }

        private State GetCorrespondingAgentState(MapsVertex vertex, MapsAgent agent)
        {
            State state = new State(agent.GetPrivateState(vertex.stateIndexes[agent.name]));
            foreach (GroundedPredicate gp in vertex.publicFacts)
            {
                state.AddPredicate(gp);
            }
            return state;
        }
    }
}
