using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation.CalculateLeakageLocally
{
    class LeakageProperty
    {
        public LeakagePropertyType propertyType { get; private set; }
        public double value { get; set; }
        public double gt_value { get; set; }
        public double percentage()
        {
            return value / gt_value;
        }
        public LeakageProperty(LeakagePropertyType propertyType)
        {
            this.propertyType = propertyType;
            value = 0;
            gt_value = 0;
        }
    }
}
