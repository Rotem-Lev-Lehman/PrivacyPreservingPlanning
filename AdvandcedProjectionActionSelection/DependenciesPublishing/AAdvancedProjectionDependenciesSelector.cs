using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    abstract class AAdvancedProjectionDependenciesSelector
    {
        private AdvancedProjectionDependeciesPublisher publisher;

        public abstract void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, double percentageToSelect, Agent agent);

        public void SetPublisher(AdvancedProjectionDependeciesPublisher publisher)
        {
            this.publisher = publisher;
        }

        protected void RecordSelection(Agent agent, Tuple<Action, Predicate> chosen)
        {
            publisher.RecordDependencyPicked(agent, chosen);
        }
    }
}
