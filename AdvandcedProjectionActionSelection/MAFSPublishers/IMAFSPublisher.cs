﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.MAFSPublishers
{
    interface IMAFSPublisher
    {
        bool CanPublish(MapsAgent agent, MapsVertex vertex);
    }
}
