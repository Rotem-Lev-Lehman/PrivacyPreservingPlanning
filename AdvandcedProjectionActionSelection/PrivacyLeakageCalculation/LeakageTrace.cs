using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation
{
    class LeakageTrace
    {
        public List<TraceVariable> variables { get; set; }
        public List<TraceOperator> operators { get; set; }
        public List<TraceState> states { get; set; }
        public List<string> plan { get; set; }
        private Agent agent;
        private static Dictionary<Agent, Agent> nextToSendForThisAgent;
        private static List<Agent> agents;
        private static int amountOfPublicVariables;

        public LeakageTrace(Agent agent)
        {
            this.agent = agent;

            initializeVariablesStatesAndPlan();
        }

        public LeakageTrace(LeakageTrace leakageTrace)
        {
            this.variables = leakageTrace.variables;
            this.operators = leakageTrace.operators;
            this.states = new List<TraceState>();
            this.plan = leakageTrace.plan;
            this.agent = leakageTrace.agent;
        }

        private void initializeVariablesStatesAndPlan()
        {
            Tuple<List<TraceVariable>, int> tuple = TraceVariable.getVariables(agent);
            variables = tuple.Item1;
            if (amountOfPublicVariables == -1)
                amountOfPublicVariables = tuple.Item2;
            else if(amountOfPublicVariables != tuple.Item2)
            {
                amountOfPublicVariables = Math.Min(amountOfPublicVariables, tuple.Item2);
                //throw new Exception("Public variables should be the same for all agents");
            }

            states = new List<TraceState>();
            plan = new List<string>();
        }

        public void initializeOperators(List<Action> publicActions, List<Action> privateActions)
        {
            operators = TraceOperator.getOperators(agent, publicActions, privateActions);
        }

        public static void ClearTraces()
        {
            nextToSendForThisAgent = new Dictionary<Agent, Agent>();
            agents = new List<Agent>();
            amountOfPublicVariables = -1;
            TraceVariable.ClearTraces();
            TraceOperator.ClearTraces();
            TraceState.ClearTraces();
        }

        public static void setAgents(List<Agent> allAgents)
        {
            agents = allAgents;
            nextToSendForThisAgent = new Dictionary<Agent, Agent>();
            foreach (Agent agent in agents)
            {
                bool found = false;
                foreach(Agent other in agents)
                {
                    if (!agent.Equals(other))
                    {
                        nextToSendForThisAgent.Add(agent, other);
                        found = true;
                        break;
                    }
                }
                if (!found)
                    throw new Exception("The problem is not Multi Agent!");
            }
        }

        public static Agent getNextAgentAndMoveToTheNextInLine(Agent agent)
        {
            Agent next = nextToSendForThisAgent[agent];
            bool gotToNext = false;
            Agent chosen = null;
            foreach(Agent other in agents)
            {
                if (other.Equals(agent))
                    continue;
                if (other.Equals(next))
                {
                    gotToNext = true;
                    continue;
                }
                if (!gotToNext)
                    continue;

                chosen = other;
                break;
            }
            if (chosen == null)
            {
                //2 scenarios: 
                //1. the next was the last agent in the list - if so, take the first agent who is not agent/next
                //2. there are only 2 agents in the list
                //we will check both scenarios:

                foreach (Agent other in agents)
                {
                    if (other.Equals(agent))
                        continue;
                    if (other.Equals(next))
                    {
                        continue;
                    }

                    chosen = other;
                    break;
                }
                if(chosen == null)
                {
                    //there are only 2 agents, agent and next, so pick next for being the chosen one.
                    chosen = next;
                }
            }
            nextToSendForThisAgent[agent] = chosen;
            return next;
        }

        public void AddStates(TraceState recievedState, List<TraceState> sentStates)
        {
            states.Add(recievedState);
            states.AddRange(sentStates);
        }

        public void AddState(TraceState state)
        {
            states.Add(state);
        }

        public static int GetAmountOfPublicVariables()
        {
            return amountOfPublicVariables;
        }

        public static LeakageTrace CopyTraceWithoutStates(LeakageTrace leakageTrace)
        {
            LeakageTrace trace = new LeakageTrace(leakageTrace);
            return trace;
        }

        public void ClearStates()
        {
            states = new List<TraceState>();
        }
    }
}
