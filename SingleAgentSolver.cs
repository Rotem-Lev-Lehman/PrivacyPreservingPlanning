using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    //This class is for checking which problems and domains could be solved by a single agent, and that they do not require collaboration.
    //We shall check this by running each problem to be solved by the pddl of a single agent.
    class SingleAgentSolver
    {
        public List<string> Plan(List<Tuple<string, string>> domainsAndProblems)
        {
            List<string> plan = null;
            int index = 0;
            foreach (Tuple<string, string> tuple in domainsAndProblems)
            {
                string domainPath = tuple.Item1;
                string problemPath = tuple.Item2;
                Console.WriteLine("Solving on agent " + index + " pddl files.");
                plan = RunSingleAgentSolver(domainPath, problemPath);
                if(plan != null)
                {
                    plan = FixPlansActions(plan);
                    break;
                }
            }
            return plan;
        }

        private List<string> FixPlansActions(List<string> plan)
        {
            List<string> fixedPlan = new List<string>();
            foreach(string action in plan)
            {
                string fixedAction = action.Replace(" ", "_");
                fixedPlan.Add(fixedAction);
            }
            return fixedPlan;
        }

        private List<string> RunSingleAgentSolver(string domainPath, string problemPath)
        {
            bool ans;
            ExternalPlanners externalPlanners = new ExternalPlanners();
            List<string> plan = externalPlanners.PlanFiles(true, true, domainPath, problemPath, Program.maxTimeInMinutes * 60 * 1000, out ans);
            return plan;
        }
    }
}
