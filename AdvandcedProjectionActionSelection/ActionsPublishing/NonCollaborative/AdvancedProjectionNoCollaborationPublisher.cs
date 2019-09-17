using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionNoCollaborationPublisher : AAdvancedProjectionActionPublisher
    {
        private IAdvancedProjectionNonCollaborativeActionSelector actionSelector;

        public AdvancedProjectionNoCollaborationPublisher(IAdvancedProjectionNonCollaborativeActionSelector actionSelector, double percentageOfActionsSelected) : base(percentageOfActionsSelected)
        {
            this.actionSelector = actionSelector;
        }

        public override void publishActions(List<Action> allProjectionAction, Dictionary<Agent, List<Action>> agentsProjections)
        {
            foreach (Agent agent in agents)
            {
                List<Action> currentlProjAction = agentsProjections[agent];
                List<Action> selectedActions = actionSelector.SelectActions(currentlProjAction, percentageToSelected, agent);
                //now we have selected the actions we want
                //we are now adding only the selected actions to the projection:
                allProjectionAction.AddRange(selectedActions);
                
                foreach (Action act in selectedActions)
                {
                    act.agent = agent.name;
                }
            }
        }
    }
}
