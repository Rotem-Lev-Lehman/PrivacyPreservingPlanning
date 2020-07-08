using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.OptimalPlanner
{
    class Dependency
    {
        public Action action;
        public Predicate predicate;

        public Dependency(Tuple<Action, Predicate> tuple)
        {
            action = tuple.Item1;
            predicate = tuple.Item2;
        }

        public Dependency(Action action, Predicate predicate)
        {
            this.action = action;
            this.predicate = predicate;
        }

        public override bool Equals(object obj)
        {
            return obj is Dependency dependency &&
                   EqualityComparer<Action>.Default.Equals(action, dependency.action) &&
                   EqualityComparer<Predicate>.Default.Equals(predicate, dependency.predicate);
        }

        public override int GetHashCode()
        {
            int hashCode = 1883212533;
            hashCode = hashCode * -1521134295 + EqualityComparer<Action>.Default.GetHashCode(action);
            hashCode = hashCode * -1521134295 + EqualityComparer<Predicate>.Default.GetHashCode(predicate);
            return hashCode;
        }
    }
}
