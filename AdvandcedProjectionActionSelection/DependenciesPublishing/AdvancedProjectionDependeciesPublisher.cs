using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation;

namespace Planning
{
    class AdvancedProjectionDependeciesPublisher : AAdvancedProjectionActionPublisher
    {
        AAdvancedProjectionDependenciesSelector dependeciesSelector;

        private Dictionary<Agent, string> recordingDependencyPickingPerAgent;
        private string recordingDependencyPickingAllTogetherFilename;
        private Dictionary<Agent, int> currentDependencyRecordNumberPerAgent;
        private int currentDependencyRecordNumber;
        private static string togetherHeader = "Record number,Agent's name,Agent's record number,Action,Effect\n";
        private static string agentHeader = "Record number,Action,Effect\n";

        private string recordingDependencyPickingAllTogetherData;
        private Dictionary<Agent, string> recordingDependencyPickingDataPerAgent;

        public static int maxAmountOfDependenciesToReveal = 0;
        public static int minAmountOfDependenciesToReveal = int.MaxValue;

        public AdvancedProjectionDependeciesPublisher(AAdvancedProjectionDependenciesSelector dependeciesSelector, double percentageOfActionsSelected, Dictionary<Agent, string> recordingDependencyPickingPerAgent, string recordingDependencyPickingAllTogether) : base(percentageOfActionsSelected)
        {
            this.dependeciesSelector = dependeciesSelector;
            this.dependeciesSelector.SetPublisher(this);

            //recording:
            this.recordingDependencyPickingPerAgent = recordingDependencyPickingPerAgent;
            this.recordingDependencyPickingAllTogetherFilename = recordingDependencyPickingAllTogether;
            this.recordingDependencyPickingAllTogetherData = togetherHeader;
            this.recordingDependencyPickingDataPerAgent = new Dictionary<Agent, string>();
            this.currentDependencyRecordNumberPerAgent = new Dictionary<Agent, int>();
            foreach(Agent agent in this.recordingDependencyPickingPerAgent.Keys)
            {
                this.currentDependencyRecordNumberPerAgent.Add(agent, 0);
                this.recordingDependencyPickingDataPerAgent.Add(agent, agentHeader);
            }
            this.currentDependencyRecordNumber = 0;
        }

        public override void publishActions(List<Action> allProjectionAction, Dictionary<Agent, List<Action>> agentsProjections)
        {
            int amountToPublish = 0;
            Dictionary<Agent, Tuple<List<Action>, List<Tuple<Action, Predicate>>>> agentsData = new Dictionary<Agent, Tuple<List<Action>, List<Tuple<Action, Predicate>>>>();
            foreach (Agent agent in agents)
            {
                List<Action> currentlProjAction = agentsProjections[agent];

                List<Tuple<Action, Predicate>> effectsWeCanReveal = new List<Tuple<Action, Predicate>>();
                InitializeEffectsWeCanReveal(currentlProjAction, effectsWeCanReveal);

                agent.amountOfDependenciesThatICanShare = effectsWeCanReveal.Count;

                agentsData.Add(agent, new Tuple<List<Action>, List<Tuple<Action, Predicate>>>(currentlProjAction, effectsWeCanReveal));
                int amountForThisAgent = (int)(percentageToSelected * effectsWeCanReveal.Count);
                amountToPublish = Math.Max(amountToPublish, amountForThisAgent);
            }
            Program.amountOfDependenciesPublished = amountToPublish;
            foreach(Agent agent in agents) {
                Tuple<List<Action>, List<Tuple<Action, Predicate>>> data = agentsData[agent];
                List<Action> currentlProjAction = data.Item1;
                List<Tuple<Action, Predicate>> effectsWeCanReveal = data.Item2;

                dependeciesSelector.StartSelectingDependencies(currentlProjAction, effectsWeCanReveal, amountToPublish, agent);
                //now we have selected the dependencies we want
                //we are now adding the actions to the projection:
                allProjectionAction.AddRange(currentlProjAction);

                /*
                foreach (Action act in currentlProjAction)
                {
                    act.agent = agent.name;
                }
                */

                //WriteToFile(recordingDependencyPickingPerAgent[agent], recordingDependencyPickingDataPerAgent[agent]);
            }

            //WriteToFile(recordingDependencyPickingAllTogetherFilename, recordingDependencyPickingAllTogetherData);
            //int breakpoint = 0;
        }

        private void WriteToFile(string filename, string data)
        {
            File.WriteAllText(filename, data);
        }

        private void InitializeEffectsWeCanReveal(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal)
        {
            foreach (Action action in possibleActions)
            {
                List<Predicate> currEffects = action.HashEffects;
                List<Predicate> artificialEffects = new List<Predicate>();
                List<Predicate> nonArtificialEffects = new List<Predicate>();
                foreach (Predicate p in currEffects)
                {
                    if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //it is an artificial predicate
                        artificialEffects.Add(p);
                        effectsWeCanReveal.Add(new Tuple<Action, Predicate>(action, p));
                    }
                    else
                    {
                        nonArtificialEffects.Add(p);
                    }
                }
                CompoundFormula newEffects = new CompoundFormula("and");
                foreach (Predicate p in nonArtificialEffects)
                {
                    newEffects.AddOperand(p);
                }

                action.Effects = newEffects;
                action.HashEffects = nonArtificialEffects;
            }
        }

        public void EnterDependenciesToTrace(Agent agent, Tuple<Action, Predicate> chosen, List<Action> actionsAffected)
        {
            if (actionsAffected.Count == 0)
                return;
            Predicate predicate;
            bool negation = false;
            int val = 0;
            if (chosen.Item2.Negation)
            {
                //if it is a "not Predicate"
                predicate = chosen.Item2.Negate();
                negation = true;
                val = 1;
            }
            else
            {
                predicate = chosen.Item2;
            }
            Predicate privatePredicate = agent.ArtificialToPrivate[(GroundedPredicate)predicate];

            Dictionary<Predicate, int> publicEffectsOfChosen = getPublicEffects(chosen.Item1.HashEffects);
            int recievedStateID = TraceState.GetNextStateID();

            TraceState recievedState = getRevealerRecievedState(agent, privatePredicate, val, publicEffectsOfChosen, recievedStateID);

            List<TraceState> sentStates = getRevealerSentStates(agent, actionsAffected, val, recievedStateID);

            traces[agent].AddStates(recievedState, sentStates);

            CopyTraceStatesForAllAgents(agents, agent, recievedState, sentStates, val);

        }

        private void CopyTraceStatesForAllAgents(List<Agent> agents, Agent agent, TraceState recievedState, List<TraceState> sentStates, int val)
        {
            bool found = false;
            foreach (Agent other in agents)
            {
                if (other.Equals(agent))
                {
                    found = true;
                    continue;
                }

                bool imTheSender = recievedState.senderID == other.getID();

                TraceState rec = AlterState(recievedState, other, true, imTheSender, val);

                List<TraceState> traceStates = new List<TraceState>();
                foreach(TraceState state in sentStates)
                {
                    TraceState temp = AlterState(state, other, false, imTheSender, val);
                    traceStates.Add(temp);
                }

                traces[other].AddStates(rec, traceStates);
            }
            if (!found)
                throw new Exception("Agent not found");
        }

        private TraceState AlterState(TraceState state, Agent other, bool first, bool imTheSender, int val)
        {
            string context = "received";
            int iParentID = -1;
            if (imTheSender)
            {
                if (first) {
                    context = "sending";
                }
                else
                {
                    iParentID = state.parentID;
                }
            }

            List<int> vals = AlterVals(state.values, other, val);

            TraceState altered = new TraceState(other.getID(), state.senderID, state.stateID, state.parentID, iParentID, state.cost, state.heuristic, state.privateIDs, vals, context);

            return altered;
        }

        private List<int> AlterVals(List<int> values, Agent other, int val)
        {
            int privateVal = 1;
            if (val == 1)
                privateVal = 0;

            List<int> altered = new List<int>();

            int amountOfPublicVariables = LeakageTrace.GetAmountOfPublicVariables();
            for(int i = 0; i < amountOfPublicVariables; i++)
            {
                altered.Add(values[i]);
            }
            int totalAmountOfVariables = traces[other].variables.Count;

            int amountOfPrivateVariables = totalAmountOfVariables - amountOfPublicVariables;
            for(int i = 0; i < amountOfPrivateVariables; i++)
            {
                altered.Add(privateVal);
            }

            return altered;
        }

        private TraceState getRevealerRecievedState(Agent agent, Predicate predicateBeforeNegation, int val, Dictionary<Predicate, int> publicEffectsOfChosen, int stateID)
        {
            List<int> receivedStateVals = GetVals(predicateBeforeNegation, agent, val, publicEffectsOfChosen);
            Agent sender = LeakageTrace.getNextAgentAndMoveToTheNextInLine(agent);
            int otherAgentID = sender.getID();
            int parentID = -1;
            int iparentID = -1;
            int cost = 1;
            int heuristic = 1;
            List<int> privateIDs = GetIDs(stateID, agents, agent, 0);
            string receivedContext = "received";
            TraceState receivedState = new TraceState(agent.getID(), otherAgentID, stateID, parentID, iparentID, cost, heuristic, privateIDs, receivedStateVals, receivedContext);

            return receivedState;
        }

        private List<TraceState> getRevealerSentStates(Agent agent, List<Action> actionsAffected, int val, int recievedStateID)
        {
            int diff = 1;
            List<TraceState> sentStates = new List<TraceState>();
            foreach (Action action in actionsAffected)
            {
                Dictionary<Predicate, int> publicEffectsOfAffected = getPublicEffects(action.HashEffects);
                List<int> sentStateVals = GetVals(null, agent, val, publicEffectsOfAffected);
                int sentSenderID = agent.getID();
                int sentStateID = TraceState.GetNextStateID();
                int sentParentID = recievedStateID;
                int sentIParentID = -1;
                int sentCost = 1;
                int sentHeuristic = 1;
                List<int> sentPrivateIDs = GetIDs(recievedStateID, agents, agent, diff);
                string sentContext = "sending";
                TraceState sentState = new TraceState(agent.getID(), sentSenderID, sentStateID, sentParentID, sentIParentID, sentCost, sentHeuristic, sentPrivateIDs, sentStateVals, sentContext);

                sentStates.Add(sentState);

                diff++;
            }

            return sentStates;
        }

        private Dictionary<Predicate, int> getPublicEffects(List<Predicate> hashEffects)
        {
            Dictionary<Predicate, int> publicEffects = new Dictionary<Predicate, int>();
            foreach(Predicate p in hashEffects)
            {
                if (!p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                {
                    //public effect
                    Predicate curr = p;
                    int val = 0;
                    if (p.Negation)
                    {
                        curr = p.Negate();
                        val = 1;
                    }
                    publicEffects.Add(p, val);
                }
            }
            return publicEffects;
        }

        private List<int> GetIDs(int stateID, List<Agent> agents, Agent agent, int diff)
        {
            List<int> IDs = new List<int>();
            bool found = false;
            foreach(Agent other in agents)
            {
                if (other.Equals(agent))
                {
                    IDs.Add(stateID + 1 + diff);
                    found = true;
                }
                else
                {
                    IDs.Add(stateID + 1);
                }
            }
            if (!found)
                throw new Exception("Agent not found");

            return IDs;
        }

        private List<int> GetVals(Predicate predicate, Agent agent, int value, Dictionary<Predicate, int> publicEffects)
        {
            int oppositeVal = 1;
            if (value == 1)
                oppositeVal = 0;

            List<int> vals = new List<int>();
            Dictionary<Predicate, TraceVariable> agentsVars = TraceVariable.GetVariablesDict(agent.getID());
            bool found = false;
            if (predicate == null)
                found = true;
            foreach (Predicate p in agentsVars.Keys)
            {
                if (predicate != null && p.Equals(predicate))
                {
                    vals.Add(value);
                    found = true;
                }
                else
                {
                    if (publicEffects.ContainsKey(p))
                    {
                        vals.Add(publicEffects[p]);
                    }
                    else
                    {
                        vals.Add(oppositeVal); //opposite -- dont care about them
                    }
                }
            }
            if (!found)
                throw new Exception("Variable not found");

            return vals;
        }

        public void RecordDependencyPicked(Agent agent, Tuple<Action, Predicate> chosen)
        {
            /*
            //The stuff to record:
            string actionChosen = chosen.Item1.Name;
            Predicate predicate;
            bool negation = false;
            if (chosen.Item2.Negation)
            {
                //if it is a "not Predicate"
                predicate = chosen.Item2.Negate();
                negation = true;
            }
            else
            {
                predicate = chosen.Item2;
            }
            Predicate privatePredicate = agent.ArtificialToPrivate[(GroundedPredicate)predicate];
            if (negation)
            {
                privatePredicate = privatePredicate.Negate();
            }
            string effectChosen = privatePredicate.ToString();

            //Record to the agent's file:
            //string agentFilename = recordingDependencyPickingPerAgent[agent];
            int agentRecordNumber = currentDependencyRecordNumberPerAgent[agent];
            
            ////string agentData = agentRecordNumber + "," + actionChosen + "," + effectChosen + "\n";
            ////recordingDependencyPickingDataPerAgent[agent] = recordingDependencyPickingDataPerAgent[agent] + agentData; //append next line
            ////
            //Record to the all together file:
            string togetherData = currentDependencyRecordNumber + "," + Program.ConvertAgentNameToItsUsableName(agent) + "," + agentRecordNumber + "," + actionChosen + "," + effectChosen + "\n";
            recordingDependencyPickingAllTogetherData = recordingDependencyPickingAllTogetherData + togetherData;
            //AppendOrCreateFile(recordingDependencyPickingAllTogetherFilename, togetherHeader, togetherData);

            //Increase counters:
            currentDependencyRecordNumberPerAgent[agent]++;
            currentDependencyRecordNumber++;
            */
        }
    }
}
