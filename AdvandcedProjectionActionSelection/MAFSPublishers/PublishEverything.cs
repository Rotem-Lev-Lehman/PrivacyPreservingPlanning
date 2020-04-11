using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    /*
     * Use this class in order to publish every public state that the MAFS planner found.
     * In fact, if you use this, it will be as nothing changed in the previous code.
     */
    class PublishEverything : IMAFSPublisher
    {
        public bool CanPublish(MapsAgent agent, MapsVertex vertex)
        {
            return true;
        }
    }
}
