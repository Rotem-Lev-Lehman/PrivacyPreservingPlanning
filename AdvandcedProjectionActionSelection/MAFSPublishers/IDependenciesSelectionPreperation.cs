using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    interface IDependenciesSelectionPreperation
    {
        void PrepareSelection(AAdvancedProjectionActionPublisher publisher, List<MapsAgent> mafsAgents, List<Agent> agents, AHandleTraces tracesHandler);
    }
}
