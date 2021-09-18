using Planning.AdvandcedProjectionActionSelection.OptimalPlanner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.RevealDepOnTheFly.DependenciesSelectionVoting
{
    abstract class ASelectByPriority
    {
        private Agent agent;
        private List<Action> allActions;
        private PriorityQueue<Dependency, int> myDependencies;

        public Dependency RevealNextDependency()
        {
            if (myDependencies.Count > 0)
                return myDependencies.Dequeue().Value;
            else
                return null;
        }

        public int GetPriorityOfSelection()
        {
            if (myDependencies.Count > 0)
                return myDependencies.Peek().Priority;
            else
                return -1;
        }
    }
}
