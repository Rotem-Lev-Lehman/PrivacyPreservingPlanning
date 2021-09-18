using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    class DontHandleTraces : AHandleTraces
    {
        public override bool usesRealStartState()
        {
            return false;
        }

        public override void FinishPlanning(List<string> highLevelPlan)
        {
            //don't do anything here...
        }

        public override void PublishGoalState(MapsVertex goalVertex, MapsAgent goalFinder)
        {
            //don't do anything here...
        }

        public override void publishRealStartState(MapsAgent agent, MapsVertex realStartState, int stateID, Dictionary<string, int> iparents)
        {
            //don't do anything here...
        }

        public override void publishStartState(MapsAgent agent, MapsVertex startState, int stateID, Dictionary<string, int> iparents)
        {
            //don't do anything here...
        }

        public override void publishState(MapsVertex vertex, MapsAgent agent)
        {
            //don't do anything here...
        }

        public override void RecieveState(MapsVertex recievedVertex, MapsAgent recievedAgent, MapsVertex sentVertex, MapsAgent senderAgent)
        {
            //don't do anything here...
        }
    }
}
