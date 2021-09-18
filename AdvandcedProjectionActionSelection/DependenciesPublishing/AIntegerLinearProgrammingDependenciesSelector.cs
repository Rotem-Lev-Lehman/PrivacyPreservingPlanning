using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Planning.AdvandcedProjectionActionSelection.OptimalPlanner;

namespace Planning.AdvandcedProjectionActionSelection.DependenciesPublishing
{
    abstract class AIntegerLinearProgrammingDependenciesSelector : AAdvancedProjectionDependenciesSelector
    {
        List<Dependency> availableDependencies;
        Dictionary<Predicate, List<Dependency>> artificialFacts2dependencies;
        Dictionary<Action, List<Predicate>> actions2artificialPreconditions;

        // names in the ILP problem file:
        Dictionary<Dependency, string> dependency2name;
        Dictionary<string, Dependency> name2dependency;
        Dictionary<Predicate, string> artificialFact2name;
        Dictionary<string, Predicate> name2artificialFact;
        Dictionary<Action, string> action2name;
        Dictionary<string, Action> name2action;


        protected override void SelectDependencies(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal, int amountToPublish, Agent agent)
        {
            throw new NotImplementedException();
        }
    }
}
