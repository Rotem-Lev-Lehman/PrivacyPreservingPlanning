﻿using System;
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

    }
}
