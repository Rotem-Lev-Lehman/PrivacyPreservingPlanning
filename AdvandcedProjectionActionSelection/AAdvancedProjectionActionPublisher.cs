using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    abstract class AAdvancedProjectionActionPublisher
    {
        protected List<Agent> agents;
        protected double percentageToSelected;

        protected AAdvancedProjectionActionPublisher(double percentageOfActionsSelected)
        {
            this.percentageToSelected = percentageOfActionsSelected;
        }

        public void setAgents(List<Agent> newAgents)
        {
            this.agents = newAgents;
        }

        public abstract void publishActions(List<Action> allProjectionAction, Dictionary<Agent, List<Action>> agentsProjections);
    }
}
