using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    abstract class AHandleTraces
    {
        protected Dictionary<Agent, LeakageTrace> traces;
        protected List<Agent> agents;

        public void setTraces(Dictionary<Agent, LeakageTrace> traces)
        {
            this.traces = traces;
        }

        public void setAgents(List<Agent> agents)
        {
            this.agents = agents;
        }

        public abstract void publishState(MapsVertex vertex, MapsAgent agent);
        public abstract void publishStartState(MapsAgent agent, MapsVertex startState, int stateID, Dictionary<string, int> iparents);
        public abstract void FinishPlanning(List<string> highLevelPlan);
        public abstract void RecieveState(MapsVertex recievedVertex, MapsAgent recievedAgent, MapsVertex sentVertex, MapsAgent senderAgent);
        public abstract void PublishGoalState(MapsVertex goalVertex, MapsAgent goalFinder);
    }
}
