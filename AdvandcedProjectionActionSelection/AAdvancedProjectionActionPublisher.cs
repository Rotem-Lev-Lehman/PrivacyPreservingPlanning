using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation;

namespace Planning
{
    abstract class AAdvancedProjectionActionPublisher
    {
        protected List<Agent> agents;
        protected double percentageToSelected;
        protected Dictionary<Agent, LeakageTrace> traces;

        protected AAdvancedProjectionActionPublisher(double percentageOfActionsSelected)
        {
            this.percentageToSelected = percentageOfActionsSelected;
        }

        public void setAgents(List<Agent> newAgents)
        {
            this.agents = newAgents;
        }

        public void setTraces(Dictionary<Agent, LeakageTrace> traces)
        {
            this.traces = traces;
        }

        public abstract void publishActions(List<Action> allProjectionAction, Dictionary<Agent, List<Action>> agentsProjections);
    }
}
