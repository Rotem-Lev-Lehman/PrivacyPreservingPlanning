using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    class NotSelectionPreperation : IDependenciesSelectionPreperation
    {
        /*
         * Use this class in order to not select any dependencies at the execution of the MAFS planner.
         * It is as if it is just a regular MAFS projection planner, without limiting the messages delivered by the planner.
         */
        public void PrepareSelection(AAdvancedProjectionActionPublisher publisher, List<MapsAgent> mafsAgents, List<Agent> agents)
        {
            //Don't do anything here...
        }
    }
}
