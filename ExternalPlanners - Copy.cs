using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;

namespace Planning
{
    static class ExternalPlanners
    {

        public static List<string> FFPlan(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
        {
            Program.KillPlanners();
            List<string> ffLplan = new List<string>();
            List<string> lPlan = new List<string>();


            if (privateActions != null)
                d.Actions = privateActions;
            if (goal != null)
                p.Goal = goal;

            MemoryStream msDomain = d.WriteSimpleDomain();
            MemoryStream problem_M_S = p.WriteSimpleProblem(curentState);

            
            //StreamWriter swDomainFile = new StreamWriter(@"D:\Dropbox-users\shanigu\Dropbox\Dropbox\privacyPreserving\Competition\all\factored\testd.pddl");
           // StreamReader srDomain = new StreamReader(msDomain);
           // swDomainFile.Write(srDomain.ReadToEnd());
           // swDomainFile.Close();

          // StreamWriter swProblemFile = new StreamWriter(@"D:\Dropbox-users\shanigu\Dropbox\Dropbox\privacyPreserving\Competition\all\factored\testp.pddl");
          //  StreamReader srProblem = new StreamReader(problem_M_S);
           // swProblemFile.Write(srProblem.ReadToEnd());
           // swProblemFile.Close();
            

            problem_M_S.Position = 0;
            msDomain.Position = 0;



            Process planer = new Process();
            //planer.StartInfo.WorkingDirectory = @"C:\project\Planning 2 new\PDDLTEST\temp";
            planer.StartInfo.FileName = "ff.exe";
            //planer.StartInfo.Arguments += "-o dT.pddl -f pT.pddl";

            FFOutput = "";

            planer.StartInfo.UseShellExecute = false;
            planer.StartInfo.RedirectStandardInput = true;
            planer.StartInfo.RedirectStandardOutput = true;
            planer.OutputDataReceived += new DataReceivedEventHandler(FFOutputHandler);
            planer.Start();
            planer.BeginOutputReadLine();
            StreamReader srOps = new StreamReader(msDomain);


            string domain = srOps.ReadToEnd();

            planer.StandardInput.Write(domain);
            srOps.Close();
            BinaryWriter b = new BinaryWriter(planer.StandardInput.BaseStream);
            b.Write('\0');

            StreamReader srFct = new StreamReader(problem_M_S);
            string problem = srFct.ReadToEnd();
            planer.StandardInput.Write(problem);
            srFct.Close();

            b.Write('\0');
            //planer.StandardInput.Flush();

            planer.StandardInput.Close();

            if (cMaxMilliseconds != -1)
            {
                if (!planer.WaitForExit(cMaxMilliseconds))//2 minutes max
                {
                    planer.Kill();
                    bUnsolvable = false;
                    return null;
                }
            }
            else
                planer.WaitForExit();
            planer.Close();
            //string sOutput = planer.StandardOutput.ReadToEnd();
            Thread.Sleep(10);
           // Console.Write("*");
            string sOutput = FFOutput;
            //throw new NotImplementedException();
            //Console.WriteLine(sOutput);
            MemoryStream planMs = new MemoryStream();
            if (sOutput.Contains("found legal plan as follows"))
            {
                string sPlan = sOutput.Substring(sOutput.IndexOf("found legal plan as follows"));
                sPlan = sPlan.Replace("found legal plan as follows", "").Trim();
                string[] asPlan = sPlan.Split('\n');
                string sFinalPlan = "";
                for (int i = 0; i < asPlan.Length; i++)
                {
                    if (!asPlan[i].Contains(":"))
                        break;
                    if (asPlan[i].Contains("time spent:"))
                        break;
                    sFinalPlan += asPlan[i].Substring(asPlan[i].IndexOf(':') + 2).Trim() + "\n";
                }
                StreamWriter sw = new StreamWriter(planMs);
                sw.WriteLine(sFinalPlan);
                sw.Close();
                bUnsolvable = false;
            }
            else
            {
                if (sOutput.Contains("goal can be simplified to TRUE"))
                {
                    ffLplan = new List<string>();
                    bUnsolvable = false;
                    return ffLplan;

                }
                else if (sOutput.Contains("goal can be simplified to FALSE"))
                {

                    ffLplan = null;
                    bUnsolvable = true;
                    return null;

                }
                else
                {
                    ffLplan = null;
                    bUnsolvable = false;
                    return null;
                }
            }


            lPlan = ReadPlan(new MemoryStream(planMs.ToArray()));
            ffLplan = lPlan;
            return lPlan;

        }
        public static List<string> PdbFFPlan(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
        {
            Program.KillPlanners();
            List<string> ffLplan = new List<string>();
            List<string> lPlan = new List<string>();


            if (privateActions != null)
                d.Actions = privateActions;
            if (goal != null)
                p.Goal = goal;

            MemoryStream msDomain = d.WriteSimpleDomain();
            MemoryStream problem_M_S = p.WriteSimpleProblem(curentState);


            //StreamWriter swDomainFile = new StreamWriter(@"D:\Dropbox-users\shanigu\Dropbox\Dropbox\privacyPreserving\Competition\all\factored\testd.pddl");
            // StreamReader srDomain = new StreamReader(msDomain);
            // swDomainFile.Write(srDomain.ReadToEnd());
            // swDomainFile.Close();

            // StreamWriter swProblemFile = new StreamWriter(@"D:\Dropbox-users\shanigu\Dropbox\Dropbox\privacyPreserving\Competition\all\factored\testp.pddl");
            //  StreamReader srProblem = new StreamReader(problem_M_S);
            // swProblemFile.Write(srProblem.ReadToEnd());
            // swProblemFile.Close();


            problem_M_S.Position = 0;
            msDomain.Position = 0;



            Process planer = new Process();
            //planer.StartInfo.WorkingDirectory = @"C:\project\Planning 2 new\PDDLTEST\temp";
            planer.StartInfo.FileName = "ff.exe";
            //planer.StartInfo.Arguments += "-o dT.pddl -f pT.pddl";

            FFOutput = "";

            planer.StartInfo.UseShellExecute = false;
            planer.StartInfo.RedirectStandardInput = true;
            planer.StartInfo.RedirectStandardOutput = true;
            planer.OutputDataReceived += new DataReceivedEventHandler(FFOutputHandler);
            planer.Start();
            planer.BeginOutputReadLine();
            StreamReader srOps = new StreamReader(msDomain);


            string domain = srOps.ReadToEnd();

            planer.StandardInput.Write(domain);
            srOps.Close();
            BinaryWriter b = new BinaryWriter(planer.StandardInput.BaseStream);
            b.Write('\0');

            StreamReader srFct = new StreamReader(problem_M_S);
            string problem = srFct.ReadToEnd();
            planer.StandardInput.Write(problem);
            srFct.Close();

            b.Write('\0');
            //planer.StandardInput.Flush();

            planer.StandardInput.Close();

            if (cMaxMilliseconds != -1)
            {
                if (!planer.WaitForExit(cMaxMilliseconds))//2 minutes max
                {
                    planer.Kill();
                    bUnsolvable = false;
                    return null;
                }
            }
            else
                planer.WaitForExit();
            planer.Close();
            //string sOutput = planer.StandardOutput.ReadToEnd();
            Thread.Sleep(50);
            string sOutput = FFOutput;
            //throw new NotImplementedException();
            //Console.WriteLine(sOutput);
            MemoryStream planMs = new MemoryStream();
            if (sOutput.Contains("found legal plan as follows"))
            {
                string sPlan = sOutput.Substring(sOutput.IndexOf("found legal plan as follows"));
                sPlan = sPlan.Replace("found legal plan as follows", "").Trim();
                string[] asPlan = sPlan.Split('\n');
                string sFinalPlan = "";
                for (int i = 0; i < asPlan.Length; i++)
                {
                    if (!asPlan[i].Contains(":"))
                        break;
                    if (asPlan[i].Contains("time spent:"))
                        break;
                    sFinalPlan += asPlan[i].Substring(asPlan[i].IndexOf(':') + 2).Trim() + "\n";
                }
                StreamWriter sw = new StreamWriter(planMs);
                sw.WriteLine(sFinalPlan);
                sw.Close();
                bUnsolvable = false;
            }
            else
            {
                if (sOutput.Contains("goal can be simplified to TRUE"))
                {
                    ffLplan = new List<string>();
                    bUnsolvable = false;
                    return ffLplan;

                }
                else if (sOutput.Contains("goal can be simplified to FALSE"))
                {

                    ffLplan = null;
                    bUnsolvable = true;
                    return null;

                }
                else
                {
                    ffLplan = null;
                    bUnsolvable = false;
                    return null;
                }
            }


            lPlan = ReadPlan(new MemoryStream(planMs.ToArray()));
            ffLplan = lPlan;
            return lPlan;

        }
        static string FFOutput = "";
        private static void FFOutputHandler(object sendingProcess,
          DataReceivedEventArgs outLine)
        {
            if (!String.IsNullOrEmpty(outLine.Data))
            {
                FFOutput += outLine.Data + Environment.NewLine;
            }
        }


        private static string FDOutput;
        private static void FDOutputHandler(object sendingProcess,
           DataReceivedEventArgs outLine)
        {
            if (!String.IsNullOrEmpty(outLine.Data))
            {
                FDOutput += outLine.Data + Environment.NewLine;
            }
        }


        public static bool RunProcess(Process p, int cMaxMilliseconds)
        {
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardOutput = true;
            p.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);

            p.Start();
            p.BeginOutputReadLine();

            //p.WaitForExit();
            if (!p.WaitForExit(cMaxMilliseconds))
            {
                p.Kill();
                return false;
            }
            p.Close();
            return true;
        }

        public static bool RunFD(string sPath, int cMaxMilliseconds)
        {
            Process p = new Process();
            p.StartInfo.WorkingDirectory = sPath;
            //p.StartInfo.FileName = Program.BASE_PATH + @"\PDDL\Planners\ff.exe";
            p.StartInfo.FileName = @"D:\cygwin\bin\bash.exe";
            p.StartInfo.Arguments = @"D:\cygwin\home\shanigu\FastDownward\src\plan";

            p.StartInfo.Arguments += @" dFD.pddl pFD.pddl";


            p.StartInfo.Arguments += " --heuristic \"hlm,hff=lm_ff_syn(lm_rhw(reasonable_orders=true,lm_cost_type=ONE,cost_type=ONE))\" " +
                                    " --search \"lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=ONE)\"";
            //p.StartInfo.Arguments += " --heuristic \"hFF=ff(cost_type=1)\" " +
            //                       " --search \"lazy_greedy(hff, preferred=hff)\" ";
            if (!RunProcess(p, cMaxMilliseconds))
                return false;

            return true;
        }


        public static List<string> FDPlan(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
        {
            Program.KillPlanners();
            List<string> ffLplan = new List<string>();
            List<string> lPlan = new List<string>();

            File.Delete("plan.txt");
            File.Delete("sas_plan");

            if (privateActions != null)
                d.Actions = privateActions;
            if (goal != null)
                p.Goal = goal;

            MemoryStream msDomain = d.WriteSimpleDomain();
            MemoryStream problem_M_S = p.WriteSimpleProblem(curentState);

            //for now, saving files in the working directory
            StreamWriter swDomainFile = new StreamWriter("dFD.pddl");
            StreamReader srDomain = new StreamReader(msDomain);
            swDomainFile.Write(srDomain.ReadToEnd());
            swDomainFile.Close();

           StreamWriter swProblemFile = new StreamWriter("pFD.pddl");
            StreamReader srProblem = new StreamReader(problem_M_S);
            swProblemFile.Write(srProblem.ReadToEnd());
            swProblemFile.Close();
            

            problem_M_S.Position = 0;
            msDomain.Position = 0;

            bUnsolvable = false;

            if (RunFD("./", cMaxMilliseconds))
                return ReadPlan("./");
            return null;
        }

        private static List<string> ReadPlan(string sPath)
        {
            List<string> lPlan = new List<string>();
            string sPlanFile = "plan.txt";
            if (File.Exists(sPath + sPlanFile))
            {
                StreamReader sr = new StreamReader(sPath + sPlanFile);
                while (!sr.EndOfStream)
                {
                    string sAction = sr.ReadLine().Trim().ToLower();
                    if (sAction != "")
                        lPlan.Add(sAction);
                }
                sr.Close();
            }
            else if (File.Exists(sPath + "mipsSolution.soln"))
            {
                StreamReader sr = new StreamReader(sPath + "mipsSolution.soln");
                while (!sr.EndOfStream)
                {
                    string sLine = sr.ReadLine().Trim().ToLower();
                    if (sLine.Count() > 0 && !sLine.StartsWith(";"))
                    {
                        int iStart = sLine.IndexOf("(");
                        int iEnd = sLine.IndexOf(")");
                        sLine = sLine.Substring(iStart + 1, iEnd - iStart - 1).Trim();
                        lPlan.Add(sLine);
                    }
                }
                sr.Close();
            }
            else if (File.Exists(sPath + "sas_plan"))
            {
                StreamReader sr = new StreamReader(sPath + "sas_plan");
                while (!sr.EndOfStream)
                {
                    string sLine = sr.ReadLine().Trim().ToLower();
                    sLine = sLine.Replace("(", "");
                    sLine = sLine.Replace(")", "");
                    if (sLine.Count() > 0 && !sLine.StartsWith(";"))
                    {
                        int iStart = sLine.IndexOf("(");
                        sLine = sLine.Substring(iStart + 1).Trim();
                        lPlan.Add(sLine);
                    }
                }
                sr.Close();
            }
            else
            {


                return null;
            }

            List<string> lFilteredPlan = new List<string>();
            foreach (string sAction in lPlan)
            {
                if (sAction.Contains("-remove") ||
                    sAction.Contains("-translate"))
                    continue;
                if (sAction.Contains("-add"))
                    lFilteredPlan.Add(sAction.Replace("-add", ""));
                else
                    lFilteredPlan.Add(sAction);

            }

            return lFilteredPlan;
        }


        public static List<string> ReadPlan(MemoryStream ms)
        {
            List<string> lPlan = new List<string>();

            StreamReader sr = new StreamReader(ms);

            while (!sr.EndOfStream)
            {
                string sAction = sr.ReadLine().Trim().ToLower();
                if (sAction != "")
                    lPlan.Add(sAction);
            }
            sr.Close();
            return lPlan;



            List<string> lFilteredPlan = new List<string>();
            foreach (string sAction in lPlan)
            {
                if (sAction.Contains("-remove") ||
                    sAction.Contains("-translate"))
                    continue;
                if (sAction.Contains("-add"))
                    lFilteredPlan.Add(sAction.Replace("-add", ""));
                else
                    lFilteredPlan.Add(sAction);

            }

            return lFilteredPlan;
        }

        public static List<string> ManualSolve(Problem p, Domain d)
        {
            List<string> lPlan = new List<string>();
            State sStart = new State(p);
            foreach (GroundedPredicate gp in p.Known)
                sStart.AddPredicate(gp);
            State sCurrent = null, sNext = null;
            Dictionary<State, Action> dMapStateToGeneratingAction = new Dictionary<State, Action>();
            dMapStateToGeneratingAction[sStart] = null;
            Dictionary<State, State> dParents = new Dictionary<State, State>();
            dParents[sStart] = null;
            int cProcessed = 0;
            List<string> lActionNames = new List<string>();

            sCurrent = sStart;
            while (!p.IsGoalState(sCurrent))
            {
                List<Action> lActions = new List<Action>(d.GroundAllActions(sCurrent.Predicates, false));
                Console.WriteLine("Available actions:");
                for (int i = 0; i < lActions.Count; i++)
                {
                    Console.WriteLine(i + ") " + lActions[i].Name);
                }
                Console.Write("Choose action number: ");
                int iAction = int.Parse(Console.ReadLine());
                Action a = lActions[iAction];
                sNext = sCurrent.Apply(a);

                lPlan.Add(a.Name);

                foreach (Predicate pNew in sNext.Predicates)
                    if (!sCurrent.Predicates.Contains(pNew))
                        Console.WriteLine(pNew);

                if (!dParents.Keys.Contains(sNext))
                {
                    dParents[sNext] = sCurrent;
                    dMapStateToGeneratingAction[sNext] = a;
                }

                sCurrent = sNext;

                cProcessed++;
            }
            return lPlan;
            //return GeneratePlan(sCurrent, null, dParents, dMapStateToGeneratingAction);
        }


    }
}
