using Planning.AdvandcedProjectionActionSelection.OptimalPlanner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.RevealDepOnTheFly.DependenciesSelectionVoting
{
    class VotingManager
    {
        private List<Agent> agents;
        private List<ASelectByPriority> agentsSelection;
        private List<Action> allActions;
        private List<Predicate> subGoals;
        private List<Predicate> subStart;

        public List<Action> GetCurrentAllProjActions()
        {
            return allActions;
        }

        public void ApplyNextDependencySelection()
        {
            List<ASelectByPriority> agentsWhoDidNotReveal = new List<ASelectByPriority>(agentsSelection);
            
            for(int i = 0; i < agents.Count; i++)
            {
                int minPriority = -1;
                ASelectByPriority chosenSelector = null;
                foreach (ASelectByPriority agentSelector in agentsWhoDidNotReveal)
                {
                    int currPriority = agentSelector.GetPriorityOfSelection();
                    if (currPriority != -1 && (minPriority == -1 || currPriority < minPriority))
                    {
                        minPriority = currPriority;
                        chosenSelector = agentSelector;
                    }
                }
                if(minPriority == -1)
                {
                    if(i == 0)
                    {
                        throw new Exception("All of the agents have revealed all of their dependencies already...");
                    }
                    //no need to continue this selection, as all of the next agents have nothing to reveal...
                    break;
                }
                //Reveal the dependency:
                RevealDependency(chosenSelector);
            }
        }

        private void RevealDependency(ASelectByPriority chosenSelector)
        {
            Dependency revealed = chosenSelector.RevealNextDependency();
            revealed.action.HashEffects.Add(revealed.predicate);
            // need to edit the subGoals and subStarts by the revealed dependency...
            //continue here...
            throw new NotImplementedException();
        }
    }
}
