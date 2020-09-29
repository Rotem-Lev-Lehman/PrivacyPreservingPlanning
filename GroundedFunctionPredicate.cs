using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Planning
{
    public class GroundedFunctionPredicate : GroundedPredicate
    {
        public GroundedFunctionPredicate(string sName)
            : base(sName)
        {
        }

        public void AddNumber(int x)
        {
            Constant c = new Constant("Number", x + "");
            if (Constants.Count() == 0)
                throw new ArgumentException("First argument of a function cannot be a number");
            AddConstant(c);
        }
        protected override string GetString()
        {
            if (Program.internalPlaner == Program.PlanerType.ff_directPlan || Program.internalPlaner == Program.PlanerType.ff_tryCoordinate)
                return "";
            else
            {
                if (Constants.Count == 0)
                    return GetStringNoConstants();
                return base.GetString();
            }
                
        }

        private string GetStringNoConstants()
        {
            string s = "(" + Name + ")";
            if (Negation)
                s = "(not " + s + ")";
            return s;
        }

        public void AddFunction(FunctionConstant f)
        {
            AddConstant(f);
        }

        public override bool Equals(object obj)
        {
            return obj is GroundedFunctionPredicate predicate &&
                   base.Equals(obj) &&
                   Negation == predicate.Negation &&
                   m_iName == predicate.m_iName &&
                   Name == predicate.Name &&
                   m_sCachedToString == predicate.m_sCachedToString &&
                   isPublic == predicate.isPublic &&
                   EqualityComparer<List<Constant>>.Default.Equals(Constants, predicate.Constants);
        }
    }
}
