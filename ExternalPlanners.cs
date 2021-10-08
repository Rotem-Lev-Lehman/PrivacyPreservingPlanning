using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

namespace Planning
{
    class ExternalPlanners
    {

        public static string ffPath = @"ff.exe";
        public static string cygwinPath = @"C:\cygwin\";
        public static string fdOutputPath = @"C:\cygwin\home\shlomi\";

        //******************************************************************************************************************************************************

        public static string rotemCygwinPath = @"C:\cygwin64"; //My computer path
        //public static string rotemCygwinPath = @"D:\Rotem\Cygwin"; //Left server path
        //public static string rotemCygwinPath = @"D:\rotem\Cygwin"; //Right server path

        public static string fdPath = rotemCygwinPath + @"\home\Fast-Downward-af6295c3dc9b\src\garbage\"; //change this to your FD pddl files folder path
        public static string fdPython27Path = rotemCygwinPath + @"\bin\python2.7.exe"; //change this to your FD python path
        public static string fdRunningPath = rotemCygwinPath + @"\home\Fast-Downward-af6295c3dc9b\fast-downward.py"; //change this to your FD running path

        //******************************************************************************************************************************************************

        public static bool unsolvableProblem = false;

        private CancellationToken token;
        private string SymPATempPDDLFolder = null;

        public static TimeSpan PlannerTimeout = new TimeSpan(0, 5, 0);
        public ExternalPlanners()
        {
            // Console.WriteLine(" * ");
            this.token = default(CancellationToken);
        }

        public ExternalPlanners(CancellationToken token)
        {
            this.token = token;
        }

        public ExternalPlanners(CancellationToken token, string SymPATempPDDLFolder)
        {
            this.token = token;
            this.SymPATempPDDLFolder = SymPATempPDDLFolder;
        }

        private void ThrowIfCancellationRequested()
        {
            Program.cancellationTokenSource.Token.ThrowIfCancellationRequested();
            token.ThrowIfCancellationRequested();
        }

        public List<string> PlanFiles(bool bUseFF, bool bUseFD, string domainPath, string problemPath, int cMaxMilliseconds, out bool bUnsolvable)
        {
            List<string> lPlan = null;
            unsolvableProblem = false;

            //  string sFDPath = @"C:\cygwin\home\shlomi\FastDownward\src\";
            string domainStr = MakeDomainCompatible(File.ReadAllText(domainPath));
            string problemStr = MakeProblemCompatible(File.ReadAllText(problemPath));
            Process pFF = null, pFD = null;
            if (bUseFF)
                pFF = RunFF(domainStr, problemStr);
            if (bUseFD)
            {
                //pFD = RunFD(d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState));
                pFD = RunFDPlannerWithFiles(domainStr, problemStr);
            }

            bUnsolvable = false;
            bool bFFDone = false, bFDDone = false;

            Process[] process;
            if (bUseFF && !bUseFD)
                process = new Process[] { pFF };
            else
                if (!bUseFF && bUseFD)
                process = new Process[] { pFD };
            else
                process = new Process[] { pFF, pFD };

            if (WaitForProcesses(process, cMaxMilliseconds, out bFFDone, out bFDDone))
            {
                if (bFFDone)
                {
                    //Console.WriteLine("Plan found by FF");
                    Thread.Sleep(150);
                    lPlan = ReadFFPlan(process[0].Id, out bUnsolvable);
                    KillAll(process.ToList());
                    Thread.Sleep(50);
                }
                else if (bFDDone)
                {
                    //Console.WriteLine("Plan found by FD");
                    Thread.Sleep(100);
                    int pFD_id = 0;
                    if (bUseFF)
                        pFD_id = 1;
                    int exitCode = process[pFD_id].ExitCode;
                    if (exitCode == 22)
                    {
                        Console.WriteLine("The search was terminated due to memory limitation");
                    }
                    if (exitCode == 12)
                    {
                        Console.WriteLine("There is no solution for this problem (exusted all possabilities)");
                        unsolvableProblem = true;
                    }

                    lPlan = ReadPlan(fdPath);
                    KillAll(process.ToList());
                    Thread.Sleep(50);
                }
                return lPlan;
            }
            return null;
        }

        private string MakeProblemCompatible(string problemStr)
        {
            return RemovePrivateStuff(problemStr);
        }

        private string MakeDomainCompatible(string domainStr)
        {
            domainStr = domainStr.Replace(" :factored-privacy", "");
            domainStr = RemovePrivateStuff(domainStr);
            return domainStr;
        }

        private string RemovePrivateStuff(string pddlFile)
        {
            string res = pddlFile;
            if (pddlFile.Contains("(:private")) {
                string[] split = pddlFile.Split(new string[] { "(:private" }, StringSplitOptions.None);
                string afterPrivate = split[1];
                int openNum = 0;
                int endPrivateIndex = -1;
                for (int i = 0; i < afterPrivate.Length; i++)
                {
                    char curr = afterPrivate[i];
                    if(curr == ')')
                    {
                        if(openNum == 0)
                        {
                            endPrivateIndex = i;
                            break;
                        }
                        openNum--;
                    }
                    else if(curr == '(')
                    {
                        openNum++;
                    }
                }
                if(endPrivateIndex == -1)
                {
                    throw new Exception("The private block does not end...");
                }
                string privateStuff = afterPrivate.Substring(0, endPrivateIndex);
                string afterWithoutPrivateStuff = afterPrivate.Substring(endPrivateIndex + 1);
                res = split[0] + privateStuff + afterWithoutPrivateStuff;
            }
            return res;
        }

        public List<string> Plan(bool bUseFF, bool bUseFD, bool bUseSymPA, Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable, string SymPAFilename)
        {
            Console.WriteLine("In external planners***********************************************************************************");
            bUseFD = false;
            bUseSymPA = false;
            if(bUseSymPA && SymPAFilename == null)
            {
                throw new ArgumentNullException("SymPA Filename", "Indicated that we want to use SymPA planner, but did not indicate where is the planner located");
            }
            //Program.KillPlanners();
            List<string> lPlan = null;
            unsolvableProblem = false;


            if (privateActions != null)
                d.Actions = privateActions;
            if (goal != null)
                p.Goal = goal;

          //  string sFDPath = @"C:\cygwin\home\shlomi\FastDownward\src\";
            Process pFF = null, pFD = null, pSymPA = null;
            string FFdomainName = null, FFproblemName = null;
            if (bUseFF)
            {
                //pFF = RunFF(d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState));
                pFF = RunFFWithFiles(d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState), out FFdomainName, out FFproblemName);
            }
            if (bUseFD)
            {
                //pFD = RunFD(d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState));
                pFD = RunFDPlannerWithFiles(d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState));
            }
            if (bUseSymPA)
            {
                pSymPA = RunSymPAPlannerWithFiles(d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState), SymPAFilename);
            }

                
            bUnsolvable = false;
            bool bFFDone = false, bFDDone = false, bSymPADone = false;

            

            List<Process> process = new List<Process>();
            if (bUseFF)
                process.Add(pFF);
            if (bUseFD)
                process.Add(pFD);
            if (bUseSymPA)
                process.Add(pSymPA);
            //Console.WriteLine("0");
            if (WaitForProcessesWithSymPA(process, pFF, pFD, pSymPA, cMaxMilliseconds, out bFFDone, out bFDDone, out bSymPADone))
            {
                //Console.WriteLine("1");
                if (bFFDone)
                {
                    //Console.WriteLine("2");
                    //Console.WriteLine("Plan found by FF");
                    Thread.Sleep(150);
                    lPlan = ReadFFPlan(pFF.Id, out bUnsolvable);
                    KillAll(process.ToList());
                    Thread.Sleep(50);
                    //Console.WriteLine("3");
                    // Delete domain and problem files:
                    File.Delete(FFdomainName);
                    File.Delete(FFproblemName);
                    File.Delete(FFproblemName + ".ff");
                }
                else if (bFDDone)
                {
                    //Console.WriteLine("Plan found by FD");
                    Thread.Sleep(100);
                    int exitCode = pFD.ExitCode;
                    if (exitCode == 22)
                    {
                        Console.WriteLine("The search was terminated due to memory limitation");
                    }
                    if(exitCode == 12)
                    {
                        Console.WriteLine("There is no solution for this problem (exusted all possabilities)");
                        unsolvableProblem = true;
                    }
                       
                    lPlan = ReadPlan(fdPath);
                    KillAll(process.ToList());
                    Thread.Sleep(50);
                }
                else if (bSymPADone)
                {
                    Thread.Sleep(100);
                    int exitCode = pSymPA.ExitCode;
                    if (exitCode == 22)
                    {
                        Console.WriteLine("The search was terminated due to memory limitation");
                    }
                    if (exitCode == 12) //need to check these things...
                    {
                        Console.WriteLine("There is no solution for this problem (exusted all possabilities)");
                        unsolvableProblem = true;
                    }

                    lPlan = ReadSymPAPlan(SymPATempPDDLFolder);
                    KillAll(process.ToList());
                    Thread.Sleep(50);
                }
                return lPlan;
            }
            //Console.WriteLine("4");
            return null;
        }

        private List<string> ReadSymPAPlan(string symPATempPDDLFolder)
        {
            throw new NotImplementedException();
        }

        public List<string> Plan(string agent, bool bUseFF, bool bUseFD, Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
        {
            //Program.KillPlanners();
            List<string> lPlan = null;


            if (privateActions != null)
                d.Actions = privateActions;
            if (goal != null)
                p.Goal = goal;

            string sFDPath = @"C:\cygwin\home\shlomi\FastDownward\src\";
            Process pFF = null, pFD = null;
            if (bUseFF)
                pFF = RunFF(d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState));
            if (bUseFD)
                pFD = RunFD(agent, sFDPath, d.WriteSimpleDomain(), p.WriteSimpleProblem(curentState));
            bUnsolvable = false;
            bool bFFDone = false, bFDDone = false;
            Process[] process;
            if (bUseFF && !bUseFD)
                process = new Process[] { pFF };
            else
                if (!bUseFF && bUseFD)
                process = new Process[] { pFD };
            else
                process = new Process[] { pFF, pFD };

            if (WaitForProcesses(process, cMaxMilliseconds, out bFFDone, out bFDDone))
            {
                if (bFFDone)
                {
                    //  Console.WriteLine("Plan found by FF");
                    Thread.Sleep(200);
                    lPlan = ReadFFPlan(process[0].Id, out bUnsolvable);
                    KillAll(process.ToList());
                }
                else if (bFDDone)
                {
                    Console.WriteLine("Plan found by FD");
                    Thread.Sleep(100);
                    lPlan = ReadPlan(@"C:\cygwin\home\shlomi\");
                    KillAll(process.ToList());
                }
                return lPlan;
            }
            return null;
        }
        public List<string> ReadFFPlan(int iPID, out bool bUnsolvable)
        {
            string sOutput = FFOutput[iPID];
            //Console.WriteLine("Writing FF output:");
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
                if (sOutput.Contains("best first search space empty! problem proven unsolvable.") || sOutput.Contains("ff: goal can be simplified to FALSE. No plan will solve it"))
                {
                    Console.WriteLine("FF found that the problem is unsolvable");
                    unsolvableProblem = true;
                }
                if (sOutput.Contains("goal can be simplified to TRUE"))
                {
                    bUnsolvable = false;
                    return new List<string>();

                }
                else if (sOutput.Contains("goal can be simplified to FALSE"))
                {

                    bUnsolvable = true;
                    return null;

                }
                else
                {
                    bUnsolvable = false;
                    return null;
                }
            }


            List<string> lPlan = ReadPlan(new MemoryStream(planMs.ToArray()));
            return lPlan;
        }

        public bool WaitForProcesses(Process[] a, int cMaxMilliseconds, out bool bFFDone, out bool bFDDone)
        {
            DateTime dtStart = DateTime.Now;
            bool bDone = false;
            bFFDone = false;
            bFDDone = false;
            Process[] workingProcesses = new Process[a.Length];
            for(int i = 0; i < a.Length; i++)
            {
                workingProcesses[i] = a[i];
            }

            int indexOfWorkingProcess = 0;
            while (!bDone)
            {
                ThrowIfCancellationRequested();

                bDone = false;
                workingProcesses[indexOfWorkingProcess].WaitForExit(200);
                //List<Process> l = GetPlanningProcesses();
                foreach (Process p in workingProcesses)
                {
                    if (p != null)
                    {
                        if (p.HasExited)
                        {
                            if (p.StartInfo.FileName == ffPath)
                            {
                                string sOutput = FFOutput[p.Id];
                                if (sOutput.Contains("too many consts in type ARTFICIAL-ALL-OBJECTS! increase MAX_TYPE (currently 2000)") && a.Length > 1 && workingProcesses[1] != null)
                                {
                                    Console.WriteLine("The FF search was terminated due to const limitation, continuing with FD and trying to find a valid plan with it.");
                                    workingProcesses[0] = null;
                                    indexOfWorkingProcess = 1;
                                    continue;
                                }
                                bFFDone = true;
                                bFDDone = false;
                            }
                            else
                            {
                                int exitCode = p.ExitCode;
                                if (exitCode == 22 && a.Length > 1 && workingProcesses[0] != null) //if it is not the only process (we are running FF too), than try to wait for FF
                                {
                                    Console.WriteLine("The FD search was terminated due to memory limitation, continuing with FF and trying to find a valid plan with it.");
                                    workingProcesses[1] = null;
                                    continue;
                                }
                                bFFDone = false;
                                bFDDone = true;
                            }
                            bDone = true;
                        }
                    }
                }


                if (!bDone)
                {
                    try
                    {
                        TimeSpan ts = (DateTime.Now - dtStart);
                        if (ts.TotalMilliseconds > cMaxMilliseconds)
                        {
                            bDone = true;
                        }
                        bool bMemSizeLimitReached = false;
                        foreach (Process pPlanning in GetPlanningProcesses())
                        {
                            if (pPlanning.WorkingSet64 > 2 * Math.Pow(2, 30))
                            {
                                bMemSizeLimitReached = true;
                            }
                        }
                        if (bMemSizeLimitReached)
                        {
                            bDone = true;
                        }
                    }
                    catch (Exception e)
                    { }
                }

            }
            KillAll(a.ToList());
            List<Process> lPlanningProcesses = GetPlanningProcesses();
            KillAll(lPlanningProcesses);

            ThrowIfCancellationRequested();
            return bFDDone || bFFDone;
        }

        public int GetNextNonNullProcess(Process[] workingProcesses, int currP)
        {
            for(int i = 0; i < workingProcesses.Length; i++)
            {
                if (i != currP && workingProcesses[i] != null)
                    return currP;
            }
            return -1; //all other processes are null...
        }

        public bool WaitForProcessesWithSymPA(List<Process> a, Process pFF, Process pFD, Process pSymPA, int cMaxMilliseconds, out bool bFFDone, out bool bFDDone, out bool bSymPADone)
        {
            DateTime dtStart = DateTime.Now;
            bool bDone = false;
            bFFDone = false;
            bFDDone = false;
            bSymPADone = false;
            Process[] workingProcesses = new Process[a.Count];
            Dictionary<Process, int> placeInArray = new Dictionary<Process, int>();
            for (int i = 0; i < a.Count; i++)
            {
                workingProcesses[i] = a[i];
                placeInArray[a[i]] = i;
            }

            int indexOfWorkingProcess = 0;
            while (!bDone)
            {
                ThrowIfCancellationRequested();

                bDone = false;
                workingProcesses[indexOfWorkingProcess].WaitForExit(200);
                //List<Process> l = GetPlanningProcesses();
                foreach (Process p in workingProcesses)
                {
                    if (p != null)
                    {
                        if (p.HasExited)
                        {
                            int currI = placeInArray[p];
                            int nextP = GetNextNonNullProcess(workingProcesses, currI);
                            if (p == pFF)
                            {
                                string sOutput = FFOutput[p.Id];
                                if (sOutput.Contains("too many consts in type ARTFICIAL-ALL-OBJECTS! increase MAX_TYPE (currently 2000)") && a.Count > 1 && nextP != -1)
                                {
                                    Console.WriteLine("The FF search was terminated due to const limitation, continuing with other planners and trying to find a valid plan with them.");
                                    workingProcesses[currI] = null;
                                    indexOfWorkingProcess = nextP;
                                    continue;
                                }
                                bFFDone = true;
                            }
                            else if(p == pFD)
                            {
                                int exitCode = p.ExitCode;
                                if (exitCode == 22 && a.Count > 1 && nextP != -1) //if it is not the only process (we are running FF too), than try to wait for FF
                                {
                                    Console.WriteLine("The FD search was terminated due to memory limitation, continuing with other planners and trying to find a valid plan with them.");
                                    workingProcesses[currI] = null;
                                    indexOfWorkingProcess = nextP;
                                    continue;
                                }
                                bFDDone = true;
                            }
                            else // if (p == pSymPA)
                            {
                                //need to check this exitCode;
                                int exitCode = p.ExitCode;
                                if (exitCode == 22 && a.Count > 1 && nextP != -1) //if it is not the only process (we are running FF too), than try to wait for FF
                                {
                                    Console.WriteLine("The SymPA search was terminated due to memory limitation, continuing with other planners and trying to find a valid plan with them.");
                                    workingProcesses[currI] = null;
                                    indexOfWorkingProcess = nextP;
                                    continue;
                                }
                                bSymPADone = true;
                            }
                            bDone = true;
                        }
                    }
                }


                if (!bDone)
                {
                    try
                    {
                        TimeSpan ts = (DateTime.Now - dtStart);
                        if (ts.TotalMilliseconds > cMaxMilliseconds)
                        {
                            bDone = true;
                        }
                        bool bMemSizeLimitReached = false;
                        foreach (Process pPlanning in GetPlanningProcesses())
                        {
                            if (pPlanning.WorkingSet64 > 2 * Math.Pow(2, 30))
                            {
                                bMemSizeLimitReached = true;
                            }
                        }
                        if (bMemSizeLimitReached)
                        {
                            bDone = true;
                        }
                    }
                    catch (Exception e)
                    { }
                }

            }
            KillAll(a.ToList());
            List<Process> lPlanningProcesses = GetPlanningProcesses();
            KillAll(lPlanningProcesses);

            ThrowIfCancellationRequested();
            return bFDDone || bFFDone || bSymPADone;
        }

        public static void KillPlanners()
        {

            List<Process> lPlanningProcesses = GetPlanningProcesses();
            KillAll(lPlanningProcesses);

        }
        public Process RunFD(MemoryStream msDomain, MemoryStream msProblem)
        {
            File.Delete(fdPath + "plan.txt");
            File.Delete(fdPath + "sas_plan");

            //for now, saving files in the working directory


            msProblem.Position = 0;
            msDomain.Position = 0;

            StreamWriter swDomainFile = new StreamWriter(fdPath + "dFD.pddl");
            StreamReader srDomain = new StreamReader(msDomain);
            swDomainFile.Write(srDomain.ReadToEnd());
            swDomainFile.Close();

            StreamWriter swProblemFile = new StreamWriter(fdPath + "pFD.pddl");
            StreamReader srProblem = new StreamReader(msProblem);
            swProblemFile.Write(srProblem.ReadToEnd());
            swProblemFile.Close();

            Process pFD = new Process();



          
            pFD.StartInfo.FileName = cygwinPath+@"bin\bash.exe";
            pFD.StartInfo.Arguments = "-l "+ fdPath+"plan ";
             pFD.StartInfo.Arguments += fdPath+"dFD.pddl "+ fdPath + "pFD.pddl";


            pFD.StartInfo.Arguments += " --heuristic \"hlm,hff=lm_ff_syn(lm_rhw(reasonable_orders=true,lm_cost_type=ONE,cost_type=ONE))\" " +
                                    " --search \"lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=ONE)\"";

             pFD.StartInfo.UseShellExecute = false;
           

            pFD.StartInfo.RedirectStandardOutput = true;
            pFD.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);


            FDProcesses = new HashSet<Process>();
            pFD.Start();
           
            pFD.BeginOutputReadLine();

            return pFD;
        }
        public Process RunFD(string sFDPath, MemoryStream msDomain, MemoryStream msProblem)
        {
            File.Delete(sFDPath + "plan.txt");
            File.Delete(sFDPath + "sas_plan");

            //for now, saving files in the working directory


            msProblem.Position = 0;
            msDomain.Position = 0;

            StreamWriter swDomainFile = new StreamWriter(sFDPath + "dFD.pddl");
            StreamReader srDomain = new StreamReader(msDomain);
            swDomainFile.Write(srDomain.ReadToEnd());
            swDomainFile.Close();

            StreamWriter swProblemFile = new StreamWriter(sFDPath + "pFD.pddl");
            StreamReader srProblem = new StreamReader(msProblem);
            swProblemFile.Write(srProblem.ReadToEnd());
            swProblemFile.Close();

            Process pFD = new Process();



            //  pFD.StartInfo.WorkingDirectory = @"C:\cygwin\bin\";

            pFD.StartInfo.FileName = @"C:\cygwin\bin\bash.exe";
            //pFD.StartInfo.Arguments = " -i /Cygwin-Terminal.ico -";// /Cygwin-Terminal.ico -";
            pFD.StartInfo.Arguments = "-l c:/cygwin/home/shlomi/FastDownward/src/plan ";
            //pFD.StartInfo.Arguments += "'--exec 'c:/cygwin/home/shlomi/FastDownward/src/plan' 'C:/cygwin/home/shlomi/FastDownward/src/dFD.pddl' 'C:/cygwin/home/shlomi/FastDownward/src/pFD.pddl'";
            pFD.StartInfo.Arguments += "C:/cygwin/home/shlomi/FastDownward/src/dFD.pddl C:/cygwin/home/shlomi/FastDownward/src/pFD.pddl";


            pFD.StartInfo.Arguments += " --heuristic \"hlm,hff=lm_ff_syn(lm_rhw(reasonable_orders=true,lm_cost_type=ONE,cost_type=ONE))\" " +
                                    " --search \"lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=ONE)\"";


            //p.StartInfo.Arguments += " --heuristic \"hFF=ff(cost_type=1)\" " +
            //                       " --search \"lazy_greedy(hff, preferred=hff)\" ";
            pFD.StartInfo.UseShellExecute = false;
            // pFD.StartInfo.RedirectStandardInput = true;


            pFD.StartInfo.RedirectStandardOutput = true;
            pFD.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);


            FDProcesses = new HashSet<Process>();
            pFD.Start();
            // Thread.Sleep(10000);
            // StreamWriter myStreamWriter = pFD.StandardInput;
            // myStreamWriter.WriteLine();
            //  myStreamWriter.WriteLine("cd cygwin");//home/shlomi/FastDownward/src/plan");
            // myStreamWriter.Close();
            pFD.BeginOutputReadLine();

            // string sr = pFD.StandardOutput.ReadLine();
            return pFD;
        }

        /*public Process RunFDUsingUbuntoSubSystemForWindows(MemoryStream msDomain, MemoryStream msProblem)
        {
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = "cmd.exe";
            startInfo.Arguments = "/C copy /b Image1.jpg + Archive.rar Image2.jpg";
            todo change the arguments to be the command of running bash command of the ubunto
            process.StartInfo = startInfo;
            process.Start();
        }*/

        private Process RunFDPlannerWithFiles(string domainStr, string problemStr)
        {
            File.Delete(fdPath + "plan.txt");
            File.Delete(fdPath + "mipsSolution.soln");
            File.Delete(fdPath + "output.sas");
            File.Delete(fdPath + "output");
            File.Delete(fdPath + "sas_plan");

            StreamWriter swDomainFile = new StreamWriter(fdPath + "dFD.pddl");
            swDomainFile.Write(domainStr);
            swDomainFile.Close();

            StreamWriter swProblemFile = new StreamWriter(fdPath + "pFD.pddl");
            swProblemFile.Write(problemStr);
            swProblemFile.Close();

            Process pFD = new Process();
            //MFFProcesses[Thread.CurrentThread] = pFD;
            pFD.StartInfo.WorkingDirectory = fdPath;
            //this.pythonPath = @"C:\Users\OWNER\AppData\Local\Programs\Python\Python37-32\python.exe";
            //this.FDpath = @"D:\cygwin\home\Fast-Downward-af6295c3dc9b\fast-downward.py";
            pFD.StartInfo.FileName = fdPython27Path;

            pFD.StartInfo.Arguments += fdRunningPath;


            pFD.StartInfo.Arguments += " dFD.pddl pFD.pddl ";

            //pFD.StartInfo.Arguments += " --search \"lazy_greedy([ff()], preferred =[ff()])\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hlm,hff=lm_ff_syn(lm_rhw(reasonable_orders=true,lm_cost_type=ONE,cost_type=ONE))\" " +
            //                        " --search \"lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=ONE)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hdiv_pot=diverse_potentials(num_samples=1000, max_num_heuristics=infinity, max_potential=1e8, lpsolver=CPLEX, transform=no_transform(), cache_estimates=true, random_seed=-1)\"" +
            //    " --search \"astar(hdiv_pot)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hzo_pdb=zopdbs(patterns=systematic(1), transform=no_transform(), cache_estimates=true)\"" +
            //    " --search \"lazy_greedy([hzo_pdb])\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hipdb=ipdb(pdb_max_size=2000000, collection_max_size=20000000, num_samples=1000, min_improvement=10, max_time=infinity, random_seed=-1, max_time_dominance_pruning=infinity, transform=no_transform(), cache_estimates=true)\"" +
            //    " --search \"astar(hipdb)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hc=cegar(subtasks=[landmarks(),goals()], max_states=infinity, max_transitions=1M, max_time=infinity, pick=MAX_REFINED, use_general_costs=true, debug=false, transform=no_transform(), cache_estimates=true, random_seed=-1)\"" +
            //    " --search \"astar(hc)\"";


            //pFD.StartInfo.Arguments += " --search \"lazy_wastar(evals, preferred=[], reopen_closed=true, boost=1000, w=1, randomize_successors=false, preferred_successors_first=false, random_seed=-1, cost_type=NORMAL, bound=infinity, max_time=infinity, verbosity=normal)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hipdb=ipdb(pdb_max_size=2000000, collection_max_size=20000000, num_samples=1000, min_improvement=10, max_time=infinity, random_seed=-1, max_time_dominance_pruning=infinity, transform=no_transform(), cache_estimates=true)\"" +
            //      " --search \"lazy_greedy([hipdb])\"";
            //      " --search \"astar(hipdb)\"";
            //pFD.StartInfo.Arguments += " --search \"lazy_wastar([ipdb()], w=2)\"";
            //pFD.StartInfo.Arguments += " --search \"astar(ff())\"";

            //pFD.StartInfo.Arguments += " --overall-memory-limit \"3584M\"";
            pFD.StartInfo.Arguments += " --search \"lazy_greedy([ff(), lmcut()])\"";

            pFD.StartInfo.UseShellExecute = false;
            pFD.StartInfo.RedirectStandardOutput = true;


            pFD.StartInfo.RedirectStandardInput = true;
            FDOutput = "";
            pFD.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);

            FDProcesses = new HashSet<Process>();
            pFD.Start();
            pFD.BeginOutputReadLine();


            MemoryStream msModels = new MemoryStream();
            msModels.Position = 0;
            BinaryReader srModels = new BinaryReader(msModels);

            while (srModels.PeekChar() >= 0)
                pFD.StandardInput.BaseStream.WriteByte(srModels.ReadByte());

            pFD.StandardInput.Close();
            return pFD;

            /*
            if (!pFD.WaitForExit((int)PlannerTimeout.TotalMilliseconds))//5 minutes max
            {
                pFD.Kill();
                return null;
            }
            pFD.WaitForExit();
            List<string> lPlan = null;
            if (FDOutput.Contains("goal can be simplified to TRUE"))
            {
                return new List<string>();
            }
            if (FDOutput.Contains("Solution found"))
            {
                lPlan = readFDplan(sPath);
            }
            else
            {
                lPlan = null;
            }
            //MFFProcesses[Thread.CurrentThread] = null;
            return lPlan;
            */
        }

        private Process RunSymPAPlannerWithFiles(MemoryStream msDomain, MemoryStream msProblem, string symPAFilename)
        {
            File.Delete(SymPATempPDDLFolder + "/plan.txt");
            File.Delete(SymPATempPDDLFolder + "/mipsSolution.soln");
            File.Delete(SymPATempPDDLFolder + "/output.sas");
            File.Delete(SymPATempPDDLFolder + "/output");
            File.Delete(SymPATempPDDLFolder + "/sas_plan");
            File.Delete(SymPATempPDDLFolder + "/log");
            File.Delete(SymPATempPDDLFolder + "/err");

            msProblem.Position = 0;
            msDomain.Position = 0;

            StreamWriter swDomainFile = new StreamWriter(SymPATempPDDLFolder + "/dFD.pddl");
            StreamReader srDomain = new StreamReader(msDomain);
            swDomainFile.Write(srDomain.ReadToEnd());
            swDomainFile.Close();

            StreamWriter swProblemFile = new StreamWriter(SymPATempPDDLFolder + "/pFD.pddl");
            StreamReader srProblem = new StreamReader(msProblem);
            swProblemFile.Write(srProblem.ReadToEnd());
            swProblemFile.Close();


            Process pSymPA = new Process();

            pSymPA.StartInfo.WorkingDirectory = SymPATempPDDLFolder;

            pSymPA.StartInfo.FileName = symPAFilename;

            pSymPA.StartInfo.Arguments = "dFD.pddl pFD.pddl";

            pSymPA.StartInfo.UseShellExecute = false;
            //pSymPA.StartInfo.RedirectStandardOutput = true;


            //pSymPA.StartInfo.RedirectStandardInput = true;
            //FDOutput = "";
            //pSymPA.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);

            //FDProcesses = new HashSet<Process>();
            pSymPA.Start();
            //pSymPA.BeginOutputReadLine();
            /*

            MemoryStream msModels = new MemoryStream();
            msModels.Position = 0;
            BinaryReader srModels = new BinaryReader(msModels);

            while (srModels.PeekChar() >= 0)
                pSymPA.StandardInput.BaseStream.WriteByte(srModels.ReadByte());

            pSymPA.StandardInput.Close();
            */
            return pSymPA;
        }

        public Process RunFDPlannerWithFiles(MemoryStream msDomain, MemoryStream msProblem)
        {
            File.Delete(fdPath + "plan.txt");
            File.Delete(fdPath + "mipsSolution.soln");
            File.Delete(fdPath + "output.sas");
            File.Delete(fdPath + "output");
            File.Delete(fdPath + "sas_plan");

            msProblem.Position = 0;
            msDomain.Position = 0;

            StreamWriter swDomainFile = new StreamWriter(fdPath + "dFD.pddl");
            StreamReader srDomain = new StreamReader(msDomain);
            swDomainFile.Write(srDomain.ReadToEnd());
            swDomainFile.Close();

            StreamWriter swProblemFile = new StreamWriter(fdPath + "pFD.pddl");
            StreamReader srProblem = new StreamReader(msProblem);
            swProblemFile.Write(srProblem.ReadToEnd());
            swProblemFile.Close();

            Process pFD = new Process();
            //MFFProcesses[Thread.CurrentThread] = pFD;
            pFD.StartInfo.WorkingDirectory = fdPath;
            //this.pythonPath = @"C:\Users\OWNER\AppData\Local\Programs\Python\Python37-32\python.exe";
            //this.FDpath = @"D:\cygwin\home\Fast-Downward-af6295c3dc9b\fast-downward.py";
            pFD.StartInfo.FileName = fdPython27Path;

            pFD.StartInfo.Arguments += fdRunningPath;
           

            pFD.StartInfo.Arguments += " dFD.pddl pFD.pddl ";

            //pFD.StartInfo.Arguments += " --search \"lazy_greedy([ff()], preferred =[ff()])\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hlm,hff=lm_ff_syn(lm_rhw(reasonable_orders=true,lm_cost_type=ONE,cost_type=ONE))\" " +
            //                        " --search \"lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=ONE)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hdiv_pot=diverse_potentials(num_samples=1000, max_num_heuristics=infinity, max_potential=1e8, lpsolver=CPLEX, transform=no_transform(), cache_estimates=true, random_seed=-1)\"" +
            //    " --search \"astar(hdiv_pot)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hzo_pdb=zopdbs(patterns=systematic(1), transform=no_transform(), cache_estimates=true)\"" +
            //    " --search \"lazy_greedy([hzo_pdb])\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hipdb=ipdb(pdb_max_size=2000000, collection_max_size=20000000, num_samples=1000, min_improvement=10, max_time=infinity, random_seed=-1, max_time_dominance_pruning=infinity, transform=no_transform(), cache_estimates=true)\"" +
            //    " --search \"astar(hipdb)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hc=cegar(subtasks=[landmarks(),goals()], max_states=infinity, max_transitions=1M, max_time=infinity, pick=MAX_REFINED, use_general_costs=true, debug=false, transform=no_transform(), cache_estimates=true, random_seed=-1)\"" +
            //    " --search \"astar(hc)\"";


            //pFD.StartInfo.Arguments += " --search \"lazy_wastar(evals, preferred=[], reopen_closed=true, boost=1000, w=1, randomize_successors=false, preferred_successors_first=false, random_seed=-1, cost_type=NORMAL, bound=infinity, max_time=infinity, verbosity=normal)\"";
            //pFD.StartInfo.Arguments += " --heuristic \"hipdb=ipdb(pdb_max_size=2000000, collection_max_size=20000000, num_samples=1000, min_improvement=10, max_time=infinity, random_seed=-1, max_time_dominance_pruning=infinity, transform=no_transform(), cache_estimates=true)\"" +
            //      " --search \"lazy_greedy([hipdb])\"";
            //      " --search \"astar(hipdb)\"";
            //pFD.StartInfo.Arguments += " --search \"lazy_wastar([ipdb()], w=2)\"";
            //pFD.StartInfo.Arguments += " --search \"astar(ff())\"";

            //pFD.StartInfo.Arguments += " --overall-memory-limit \"3584M\"";
            pFD.StartInfo.Arguments += " --search \"lazy_greedy([ff(), lmcut()])\"";

            pFD.StartInfo.UseShellExecute = false;
            pFD.StartInfo.RedirectStandardOutput = true;


            pFD.StartInfo.RedirectStandardInput = true;
            FDOutput = "";
            pFD.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);

            FDProcesses = new HashSet<Process>();
            pFD.Start();
            pFD.BeginOutputReadLine();


            MemoryStream msModels = new MemoryStream();
            msModels.Position = 0;
            BinaryReader srModels = new BinaryReader(msModels);

            while (srModels.PeekChar() >= 0)
                pFD.StandardInput.BaseStream.WriteByte(srModels.ReadByte());

            pFD.StandardInput.Close();
            return pFD;

            /*
            if (!pFD.WaitForExit((int)PlannerTimeout.TotalMilliseconds))//5 minutes max
            {
                pFD.Kill();
                return null;
            }
            pFD.WaitForExit();
            List<string> lPlan = null;
            if (FDOutput.Contains("goal can be simplified to TRUE"))
            {
                return new List<string>();
            }
            if (FDOutput.Contains("Solution found"))
            {
                lPlan = readFDplan(sPath);
            }
            else
            {
                lPlan = null;
            }
            //MFFProcesses[Thread.CurrentThread] = null;
            return lPlan;
            */

        }

        private List<string> readFDplan(string sPath)
        {
            List<string> lPlan = new List<string>();
            if (File.Exists(sPath + "sas_plan"))
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
                    //else if (sLine.Count() > 0 && sLine.StartsWith(";"))
                    //{
                    //	lPlan.Add(sLine);
                    //}
                }
                sr.Close();
            }
            return lPlan;
        }


        public Process RunFD(string name, string sFDPath, MemoryStream msDomain, MemoryStream msProblem)
        {
            try
            {
                name = name.Replace(" ", "");
                name = name.Replace(":", "");
                sFDPath = sFDPath + name + @"\";

                if (Directory.Exists(sFDPath))
                {
                    File.Delete(sFDPath + "plan.txt");
                    File.Delete(sFDPath + "sas_plan");
                }
                else
                {
                    Directory.CreateDirectory(sFDPath);
                }
                //for now, saving files in the working directory


                msProblem.Position = 0;
                msDomain.Position = 0;

                StreamWriter swDomainFile = new StreamWriter(sFDPath + "dFD.pddl");
                StreamReader srDomain = new StreamReader(msDomain);
                swDomainFile.Write(srDomain.ReadToEnd());
                swDomainFile.Close();

                StreamWriter swProblemFile = new StreamWriter(sFDPath + "pFD.pddl");
                StreamReader srProblem = new StreamReader(msProblem);
                swProblemFile.Write(srProblem.ReadToEnd());
                swProblemFile.Close();

                Process pFD = new Process();



                //  pFD.StartInfo.WorkingDirectory = @"C:\cygwin\bin\";
                // pFD.StartInfo.WorkingDirectory = @"C:\teeeemmp";
                pFD.StartInfo.FileName = @"C:\cygwin\bin\bash.exe";
                //pFD.StartInfo.Arguments = " -i /Cygwin-Terminal.ico -";// /Cygwin-Terminal.ico -";
                pFD.StartInfo.Arguments = "-l c:/cygwin/home/shlomi/FastDownward/src/plan ";
                //pFD.StartInfo.Arguments += "'--exec 'c:/cygwin/home/shlomi/FastDownward/src/plan' 'C:/cygwin/home/shlomi/FastDownward/src/dFD.pddl' 'C:/cygwin/home/shlomi/FastDownward/src/pFD.pddl'";
                pFD.StartInfo.Arguments += "C:/cygwin/home/shlomi/FastDownward/src/" + name + "/" + "dFD.pddl C:/cygwin/home/shlomi/FastDownward/src/" + name + "/" + "pFD.pddl";


                pFD.StartInfo.Arguments += " --heuristic \"hlm,hff=lm_ff_syn(lm_rhw(reasonable_orders=true,lm_cost_type=ONE,cost_type=ONE))\" " +
                                        " --search \"lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=ONE)\"";


                //p.StartInfo.Arguments += " --heuristic \"hFF=ff(cost_type=1)\" " +
                //                       " --search \"lazy_greedy(hff, preferred=hff)\" ";
                pFD.StartInfo.UseShellExecute = false;
                // pFD.StartInfo.RedirectStandardInput = true;


                pFD.StartInfo.RedirectStandardOutput = true;
                pFD.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);


                FDProcesses = new HashSet<Process>();
                pFD.Start();
                // Thread.Sleep(10000);
                // StreamWriter myStreamWriter = pFD.StandardInput;
                // myStreamWriter.WriteLine();
                //  myStreamWriter.WriteLine("cd cygwin");//home/shlomi/FastDownward/src/plan");
                // myStreamWriter.Close();
                pFD.BeginOutputReadLine();

                // string sr = pFD.StandardOutput.ReadLine();
                return pFD;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return null;
        }
        public static Mutex m = new Mutex();

        private Process RunFF(string domainStr, string problemStr)
        {
            //m.WaitOne();
            Process pFF;
            lock (m)
            {
                pFF = new Process();

                pFF.StartInfo.FileName = ffPath;


                pFF.StartInfo.UseShellExecute = false;
                pFF.StartInfo.RedirectStandardInput = true;
                pFF.StartInfo.RedirectStandardOutput = true;
                pFF.OutputDataReceived += new DataReceivedEventHandler(FFOutputHandler);
                pFF.Start();
                FFOutput[pFF.Id] = "";
                pFF.BeginOutputReadLine();
            }
            //m.ReleaseMutex();

            string domain = domainStr;

            pFF.StandardInput.Write(domain);
            BinaryWriter b = new BinaryWriter(pFF.StandardInput.BaseStream);
            b.Write('\0');

            string problem = problemStr;
            pFF.StandardInput.Write(problem);

            b.Write('\0');

            pFF.StandardInput.Close();

            return pFF;
        }

        public Process RunFF(MemoryStream msDomain, MemoryStream msProblem)
        {
            msProblem.Position = 0;
            msDomain.Position = 0;

            Process pFF;
            //m.WaitOne();
            lock (m)
            {
                pFF = new Process();

                pFF.StartInfo.FileName = ffPath;


                pFF.StartInfo.UseShellExecute = false;
                pFF.StartInfo.RedirectStandardInput = true;
                //pFF.StartInfo.RedirectStandardOutput = true;
                //pFF.OutputDataReceived += new DataReceivedEventHandler(FFOutputHandler);
                pFF.Start();
                FFOutput[pFF.Id] = "";
                //pFF.BeginOutputReadLine();
            }
            //m.ReleaseMutex();

            StreamReader srOps = new StreamReader(msDomain);


            string domain = srOps.ReadToEnd();
            //Console.WriteLine("pFF output:");
            //Console.WriteLine(FFOutput[pFF.Id]);

            pFF.StandardInput.Write(domain);
            srOps.Close();
            BinaryWriter b = new BinaryWriter(pFF.StandardInput.BaseStream);
            b.Write('\0');

            StreamReader srFct = new StreamReader(msProblem);
            string problem = srFct.ReadToEnd();
            pFF.StandardInput.Write(problem);
            srFct.Close();

            b.Write('\0');
            //planer.StandardInput.Flush();

            pFF.StandardInput.Close();

            return pFF;
        }

        public Process RunFFWithFiles(MemoryStream msDomain, MemoryStream msProblem, out string domainName, out string problemName)
        {
            msProblem.Position = 0;
            msDomain.Position = 0;

            Process pFF;

            StreamReader srOps = new StreamReader(msDomain);
            long timestamp;
            lock (m)
            {
                timestamp = DateTime.Now.Ticks;
            }

            string domain = srOps.ReadToEnd();
            domainName = "domain_" + Program.currentFFProcessName + "_" + timestamp + ".pddl"; 
            StreamWriter domainWriter = new StreamWriter(domainName);
            domainWriter.Write(domain);
            srOps.Close();
            domainWriter.Close();

            problemName = "problem_" + Program.currentFFProcessName + "_" + timestamp + ".pddl";
            StreamReader srFct = new StreamReader(msProblem);
            string problem = srFct.ReadToEnd();
            StreamWriter problemWriter = new StreamWriter(problemName);
            problemWriter.Write(problem);
            srFct.Close();
            problemWriter.Close();


            //m.WaitOne();
            lock (m)
            {
                pFF = new Process();

                pFF.StartInfo.FileName = ffPath;
                pFF.StartInfo.Arguments = "-o " + domainName + " -f " + problemName;


                pFF.StartInfo.UseShellExecute = false;
                //pFF.StartInfo.RedirectStandardInput = true;
                pFF.StartInfo.RedirectStandardOutput = true;
                pFF.OutputDataReceived += new DataReceivedEventHandler(FFOutputHandler);
                pFF.Start();
                FFOutput[pFF.Id] = "";
                pFF.BeginOutputReadLine();
            }
            //m.ReleaseMutex();

            
            //planer.StandardInput.Flush();

            //pFF.StandardInput.Close();

            return pFF;
        }



        public List<string> FFPlan(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
        {
            try
            {


                //Program.KillPlanners();
                List<string> ffLplan = new List<string>();
                List<string> lPlan = new List<string>();


                if (privateActions != null)
                    d.Actions = privateActions;
                if (goal != null)
                    p.Goal = goal;

                MemoryStream msDomain = d.WriteSimpleDomain();
                MemoryStream problem_M_S = p.WriteSimpleProblem(curentState);


                /* StreamWriter swDomainFile = new StreamWriter(@"D:\tmp\testd.pddl",false);
                 StreamReader srDomain = new StreamReader(msDomain);
                 swDomainFile.Write(srDomain.ReadToEnd());
                 swDomainFile.Close();

                 StreamWriter swProblemFile = new StreamWriter(@"D:\tmp\testp.pddl", false);
                 StreamReader srProblem = new StreamReader(problem_M_S);
                 swProblemFile.Write(srProblem.ReadToEnd());
                 swProblemFile.Close();
                 */

                problem_M_S.Position = 0;
                msDomain.Position = 0;



                Process planer = new Process();
                //planer.StartInfo.WorkingDirectory = @"C:\project\Planning 2 new\PDDLTEST\temp";
                planer.StartInfo.FileName =  ffPath;
                //planer.StartInfo.Arguments += " - o dT.pddl -f pT.pddl";

               

                planer.StartInfo.UseShellExecute = false;
                planer.StartInfo.RedirectStandardInput = true;
                planer.StartInfo.RedirectStandardOutput = true;
                planer.OutputDataReceived += new DataReceivedEventHandler(FFOutputHandler);
                planer.Start();

                if (!FFOutput.ContainsKey(planer.Id))
                    FFOutput.Add(planer.Id, "");
                FFOutput[planer.Id] = "";

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

                planer.WaitForExit();
                
                //string sOutput = planer.StandardOutput.ReadToEnd();
                //Thread.Sleep(1000);
                string sOutput = FFOutput[planer.Id];
                planer.Close();
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
            catch(Exception ex)
            {
                bUnsolvable = true;
                return null;
            }

        }
        public List<string> PdbFFPlan(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
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


            //StreamWriter swDomainFile = new StreamWriter(@"C:\Dropbox-users\shlomi\Dropbox\Dropbox\privacyPreserving\Competition\all\factored\testd.pddl");
            // StreamReader srDomain = new StreamReader(msDomain);
            // swDomainFile.Write(srDomain.ReadToEnd());
            // swDomainFile.Close();

            // StreamWriter swProblemFile = new StreamWriter(@"C:\Dropbox-users\shlomi\Dropbox\Dropbox\privacyPreserving\Competition\all\factored\testp.pddl");
            //  StreamReader srProblem = new StreamReader(problem_M_S);
            // swProblemFile.Write(srProblem.ReadToEnd());
            // swProblemFile.Close();


            problem_M_S.Position = 0;
            msDomain.Position = 0;



            Process planer = new Process();
            //planer.StartInfo.WorkingDirectory = @"C:\project\Planning 2 new\PDDLTEST\temp";
            planer.StartInfo.FileName = ffPath;
            //planer.StartInfo.Arguments += "-o dT.pddl -f pT.pddl";

            FFOutput[planer.Id] = "";

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
            // planer.WaitForExit();
            string sOutput = FFOutput[planer.Id];
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

        Dictionary<int, string> FFOutput = new Dictionary<int, string>();
        private void FFOutputHandler(object sendingProcess,
          DataReceivedEventArgs outLine)
        {
            //Console.WriteLine(outLine.Data);
            Process p = (Process)sendingProcess;
            if (!String.IsNullOrEmpty(outLine.Data))
            {
                FFOutput[p.Id] += outLine.Data + Environment.NewLine;
            }
        }

        private HashSet<Process> FDProcesses = null;

        string FDOutput = "";
        private void FDOutputHandler(object sendingProcess,
           DataReceivedEventArgs outLine)
        {
            FDProcesses.Add((Process)sendingProcess);
            Process p = (Process)sendingProcess;
            if (!String.IsNullOrEmpty(outLine.Data))
            {
                FDOutput += outLine.Data + Environment.NewLine;
            }
        }


        public static List<Process> GetPlanningProcesses()
        {
            List<Process> l = new List<Process>();
            Process[] processes = Process.GetProcesses();
            foreach (Process p in processes)
            {
                if ((p.ProcessName.ToLower().Contains("downward") || p.ProcessName.ToLower().Contains(Program.currentFFProcessName)) && (!p.ProcessName.ToLower().Contains("office")))
                    l.Add(p);
            }
            return l;
        }


        public bool RunProcessII(Process p, int cMaxMilliseconds)
        {
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardOutput = true;
            p.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);

            DateTime dtStart = DateTime.Now;
            p.Start();
            p.BeginOutputReadLine();

            if (!p.WaitForExit(cMaxMilliseconds))
                p.Kill();
            p.Close();
            return true;
        }

        public bool RunProcess(Process p, int cMaxMilliseconds)
        {
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardOutput = true;
            p.OutputDataReceived += new DataReceivedEventHandler(FDOutputHandler);

            DateTime dtStart = DateTime.Now;
            bool bDone = false;
            FDProcesses = new HashSet<Process>();
            p.Start();
            p.BeginOutputReadLine();

            while (!bDone)
            {
                if (!p.HasExited)
                    bDone = p.WaitForExit(10000);
                else
                    bDone = true;
                if (!bDone)
                {
                    try
                    {
                        TimeSpan ts = (DateTime.Now - dtStart);
                        List<Process> l = GetPlanningProcesses();
                        if (ts.TotalMilliseconds > cMaxMilliseconds)
                        {
                            l.Add(p);
                            KillAll(l);
                            return false;
                        }
                        bool bMemSizeLimitReached = false;
                        foreach (Process pPlanning in GetPlanningProcesses())
                        {
                            if (pPlanning.WorkingSet64 > 2 * Math.Pow(2, 30))
                            {
                                bMemSizeLimitReached = true;
                            }
                        }
                        if (bMemSizeLimitReached)
                        {
                            l.Add(p);
                            KillAll(l);
                            return false;
                        }
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine("fd-fails");
                    }
                }

            }
            p.Close();
            return true;
        }

        public static void KillAll(List<Process> l)
        {
            foreach (Process p in l)
            {
                try
                {
                    if (!p.HasExited)
                    {
                        
                        p.Kill();
                       // p.WaitForExit();
                         Thread.Sleep(300);
                         //p.WaitForExit();
                        p.Close();


                    }
                }
                catch (Exception e)
                {
                    //Console.WriteLine("*");
                }


            }


        }

        public bool RunFD(string sPath, int cMaxMilliseconds)
        {
            Process p = new Process();
            p.StartInfo.WorkingDirectory = sPath;
            //p.StartInfo.FileName = Program.BASE_PATH + @"\PDDL\Planners\ff.exe";
            p.StartInfo.FileName = @"C:\cygwin\bin\bash.exe";
            p.StartInfo.Arguments = @"C:\cygwin\home\shlomi\FastDownward\src\plan";
            // p.StartInfo.Arguments = @"C:\cygwin\home\shlomi\FastDownward\src\plan";
            p.StartInfo.Arguments += @" dFD.pddl pFD.pddl";


            p.StartInfo.Arguments += " --heuristic \"hlm,hff=lm_ff_syn(lm_rhw(reasonable_orders=true,lm_cost_type=ONE,cost_type=ONE))\" " +
                                    " --search \"lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=ONE)\"";
            //p.StartInfo.Arguments += " --heuristic \"hFF=ff(cost_type=1)\" " +
            //                       " --search \"lazy_greedy(hff, preferred=hff)\" ";
            if (!RunProcess(p, cMaxMilliseconds))
                return false;

            return true;
        }


        public List<string> FDPlan(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
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

        private List<string> ReadPlan(string sPath)
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


        public List<string> ReadPlan(MemoryStream ms)
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

        public List<string> ManualSolve(Domain d, Problem p, State curentState, Formula goal, List<Action> privateActions, int cMaxMilliseconds, out bool bUnsolvable)
        {
            Program.KillPlanners();
            List<string> ffLplan = new List<string>();
            List<string> lPlan = new List<string>();


            if (privateActions != null)
                d.Actions = privateActions;
            if (goal != null)
                p.Goal = goal;
            bUnsolvable = false;
            return ManualSolve(p, d);
        }


        public List<string> ManualSolve(Problem p, Domain d)
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
                List<Action> lActions = new List<Action>(d.GroundAllActions(sCurrent.Predicates, true));
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
