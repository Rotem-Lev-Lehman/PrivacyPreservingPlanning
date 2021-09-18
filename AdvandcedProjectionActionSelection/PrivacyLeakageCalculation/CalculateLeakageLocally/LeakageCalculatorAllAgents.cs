using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation.CalculateLeakageLocally
{
    class LeakageCalculatorAllAgents
    {
        // Avg fraction (avg over all agents of prop/gt_prop).
        // At the end, we can just call the .percentage() function of each property here, 
        // and it will be the avg percentage of leakage over the entire agents of the problem:
        public Dictionary<LeakagePropertyType, LeakageProperty> propertiesAvg { get; private set; }

        public LeakageCalculatorAllAgents()
        {
            propertiesAvg = new Dictionary<LeakagePropertyType, LeakageProperty>();
            foreach (LeakagePropertyType propertyType in Enum.GetValues(typeof(LeakagePropertyType)))
            {
                propertiesAvg[propertyType] = new LeakageProperty(propertyType);
            }
        }

        public void CalculateLeakage(List<MapsAgent> mapsAgents)
        {
            foreach(MapsAgent chosen in mapsAgents)
            {
                List<MapsAgent> adversaries = new List<MapsAgent>();
                foreach(MapsAgent a in mapsAgents)
                {
                    if (a != chosen)
                        adversaries.Add(a);
                }
                LeakageCalculatorOneAgent currAgentCalc = new LeakageCalculatorOneAgent();
                currAgentCalc.CalculateLeakage(adversaries, chosen);
                foreach(LeakagePropertyType propertyType in Enum.GetValues(typeof(LeakagePropertyType)))
                {
                    LeakageProperty avgProp = propertiesAvg[propertyType];
                    LeakageProperty currAgentProp = currAgentCalc.properties[propertyType];
                    avgProp.value += currAgentProp.percentage(); // at the end, this will sum all of the percantages of the agents' leakage
                    avgProp.gt_value++; // at the end, this will be the amount of agents in the problem
                }
            }
        }
    }
}
