using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Diagnostics;
using System.Threading;
using Newtonsoft.Json;
using Planning.AdvandcedProjectionActionSelection.MAFSPublishers;
using Planning.AdvandcedProjectionActionSelection.OptimalPlanner;
using Planning.AdvandcedProjectionActionSelection.DependenciesGraphGeneration;
using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation.CalculateLeakageLocally;
using System.Threading.Tasks;

namespace Planning
{
    class Program
    {
        // public static StreamWriter timeResults = new StreamWriter("timeResults.txt", false);
        public static bool supportPrivateGoal = true;
        public static bool thereIsPrivateGoal = false;
        public static string outputPath = Directory.GetCurrentDirectory() + "/Results3/";
        static public int notSendedStates = 0;
        static public double makeSpanPlanTime = 0;
        public static int sendedStateCounter = 0;
        public static string resultFilePath = "plan.txt";
        public static int StateExpendCounter = 0;
        public static double countMacro = 0.0;
        public static double countAvgPerMacro = 0.0;
        static string pdbPath;
        static string domainFolderPath;
        public enum PlanerType { ff_tryCoordinate, hsp_tryCoordinate, ff_directPlan, hsp_directPlan, ff_toActions };
        public enum HighLevelPlanerType { PDB, Landmark, Projection, ForwardHsp, BackwardHsp, LandmarkAndHsp, WeightedLandmarkAndHsp, SophisticatedProjection, MafsLandmark, Mafsff, MafsWithProjectionLandmarks, PDBMafs, ProjectionMafs, DistrebutedProjectionMafs, OptimalDependenciesPlanner, SingleAgentPlanner, DependenciesGraphGenerator, ManualDebugPlanner, TestsForRotem};
        
        //static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.ProjectionMafs; //Use the projection as a Heuristic for MAFS.
        static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.Projection; //Use the projection as a solver by it's own. Try to solve a high level plan and then extend it to private plans.
        //static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.OptimalDependenciesPlanner; //Find the optimal set of dependencies to solve a problem.
        //static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.SingleAgentPlanner; //Plan using the single agent pddl file only (go over all agents until a single agent plan is found).
        //static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.DependenciesGraphGenerator; //Do not plan, but create a dependency graph for the given problem.
        //static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.ManualDebugPlanner; //Do not plan, but create a dependency graph for the given problem.
        //static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.TestsForRotem; //Do not plan, but create a dependency graph for the given problem.
        static public bool testingProjectionWithLessDependenciesRevealed = true;

        static public bool directMessage = false;
        static public PlanerType internalPlaner;
        public enum ProjectionVersion { Local, Global, GlobalV2, GlobalWithMemo, fullGlobal, ProjectionFF, NULL };
        static public ProjectionVersion projectionVersion = ProjectionVersion.Global; // Relevant: "Global" (is the full plan h) + "ProjectionFF" 
        static public List<double> times = new List<double>();
        static public List<double> countActions = new List<double>();
        static public double timeSum = 0;
        static public double actionSum = 0;
        static public double messages = 0;
        static public double messages2 = 0;
        static public double messages3 = 0;
        static public int countOfDisLandmarks = 0;
        static public bool complexLandmarks = true;
        static int globalIndex = 0;
        static public PatternDatabase pdb = null;

        private static DateTime Start;
        public static DateTime StartHighLevelPlanning, StartGrounding, End;
        public static int PlanCost, PlanMakeSpan;

        public static int countOfProjAction = 0;
        public static int countOfProjFact = 0;
        public static int sizeOfRegressionTree = 0;
        public static int maxSizeOfRegressionTree = 0;
        public static int maxDepthOfRegressionTree = 0;

        //Dependencies selection timing:
        public static double averageTimeForCreatingDependencies;
        public static double minTimeForCreatingDependencies;
        public static double maxTimeForCreatingDependencies;
        public static double totalTimeForCreatingDependencies;
        public static double timeForSelectingDependencies;

        public static double currPercentageForSelectingActionInAdvancedProjectionPlaner = 1;
        public static bool dependencyUsed = false; // false = selecting actions, true = selecting dependencies
        public static bool collaborationUsed = false;
        public static string typeOfSelector = null;

        //dependencies recording files:
        public static Dictionary<Agent, string> recordingDependencyPickingPerAgent = null;
        public static string recordingDependencyPickingAllTogether = null;
        public static string recordingHighLevelPlanFileName = null;
        public static int currentParsingRound = 0;
        public static string recordingFolderWithPercentage = null;
        public static string agentsRecordingFolder = null;
        public static Dictionary<string, bool> alreadySolved = null;
        public static string currentProblemName = null;
        //golden standard calculation:
        public static int amountOfDependenciesUsed = 0;
        public static int amountOfDependenciesUsedInPlanningProcess = 0; //Using in MAFS only...
        public static string goldenStandardRootDirectory = null;
        public static string goldenStandardDomainDirectory = null;
        public static string goldenStandardCurrentDirectory = null;

        //publishing amount and not percentage:
        public static int amountOfDependenciesPublished;

        //keeping the traces for the privacy leakage calculation:
        public static string tracesFolder;
        public static Dictionary<Agent, AdvandcedProjectionActionSelection.PrivacyLeakageCalculation.LeakageTrace> agentsTraces;

        //ff process name:
        public static string currentFFProcessName = null;

        //creating traces after solution was found:
        public static List<string> highLevelPlanForTraces = null;
        public static string tracesFolderForSavingTraces = null;
        public static bool creatingTracesAfterSolutionWasFound = false; //don't need to change this value, it is changed in the specific code who controls it...

        //Optimal dependencies planner stuff:
        public static int optimalAmountOfDependenciesForCurrentProblem;
        public static List<string> planForOptimalAmountOfDependenciesForCurrentProblem;
        public static Domain currentJointDomain;
        public static Problem currentJointProblem;
        public static bool isValidPlan = false;

        //Single agent solver stuff:
        public static List<Tuple<string, string>> domainsAndProblems;

        //Run with a dummy init action:
        public static bool runWithDummyInitAction; //This shall be true if the user is using Rotem's experiment settings (with the partial discloser of private dependencies)

        //For the MAFS planner heuristic calculation:
        public static bool selectingDependenciesToUseInTheHueristic = false; //do not need to touch this, it will be true automatically in the start of the MAFS experiment.

        //Cancelation token:
        public static CancellationTokenSource cancellationTokenSource;

        public static bool runningOnLinux = true;
        public static string baseFolderNameMyComputer = @"C:\Users\User\Desktop\second_degree\code\GPPP(last_v)"; //My computer path. Change this to your computer path
        public static string baseFolderNameLinuxServer = "/home/levlerot/CPPP/GPPP"; //path on cluster server (linux path)
        public static string baseFolderName { get
            {
                if (runningOnLinux)
                    return baseFolderNameLinuxServer;
                else
                    return baseFolderNameMyComputer;
            }
            set { }
        }
        //public static string baseFolderName = "/home/levlerot/CPPP/GPPP"; //path on cluster server (linux path)
        //public static string baseFolderName = @"D:\GPPP(last_v)"; //Left server's path
        //public static string baseFolderName = @"D:\rotem\GPPP(last_v)"; //Right server's path

        public static readonly int maxTimeInMinutesRegularExperiment = 5; //After 5 minutes, there will be a timeout. -- For other experiments
        public static readonly int maxTimeInMinutesOptimalExperiment = 5; //After 30 minutes, there will be a timeout. -- For optimal dependencies planner
        public static int maxTimeInMinutes { 
            get {
                if(highLevelPlanerType == HighLevelPlanerType.OptimalDependenciesPlanner)
                {
                    return maxTimeInMinutesOptimalExperiment;
                }
                else
                {
                    return maxTimeInMinutesRegularExperiment;
                }
            }
            set { 
                // do not enable to set the max time...
            } 
        }

        public static void GetJointDomain(List<Domain> lDomains, List<Problem> lProblems, out Domain dJoint, out Problem pJoint)
        {
            dJoint = lDomains[0].Clone();
            pJoint = lProblems[0].Clone();
            pJoint.Domain = dJoint;
            CompoundFormula cfAnd = new CompoundFormula("and");
            cfAnd.AddOperand(pJoint.Goal);
            for (int i = 1; i < lDomains.Count; i++)
            {
                dJoint.Actions.AddRange(lDomains[i].Actions);
                dJoint.Predicates.UnionWith(lDomains[i].Predicates);
                dJoint.Constants.UnionWith(lDomains[i].Constants);
                foreach (Predicate pKnown in lProblems[i].Known)
                    pJoint.AddKnown(pKnown);
                cfAnd.AddOperand(lProblems[i].Goal);
            }
            pJoint.Goal = cfAnd.Simplify();
        }

        public static bool VerifyPlan(Domain dJoint, Problem pJoint, List<string> lPlan)
        {
            List<State> lStates = new List<State>();
            State sInitial = new State(pJoint);
            foreach (Predicate p in pJoint.Known)
                sInitial.AddPredicate(p);
            State sCurrent = sInitial;
            int i = 0;
            foreach (string sAction in lPlan)
            {
                State sNew = sCurrent.Apply(sAction);
                if (sNew == null)
                    return false;
                lStates.Add(sNew);
                sCurrent = sNew;
                i++;
            }
            CompoundFormula joinGoal = new CompoundFormula("and");
            foreach (GroundedPredicate gGp in pJoint.Goal.GetAllPredicates())
            {
                if (!gGp.Name.Equals("and"))
                    joinGoal.AddOperand(gGp);
            }
            pJoint.Goal = joinGoal;
            if (pJoint.IsGoalState(sCurrent))
            {
                PlanCost = lPlan.Count;
                return true;
            }
            return false;
        }

        static void ReadAgentFiles(DirectoryInfo dir, string sOutputFile)
        {
            Console.WriteLine("Reading files " + dir.Name);
            List<string> lDomainFiles = new List<string>();
            List<string> lProblemFiles = new List<string>();
            domainsAndProblems = new List<Tuple<string, string>>();
            foreach (FileInfo fi in dir.GetFiles())
            {
                if (fi.Name.Contains("domain"))
                    lDomainFiles.Add(fi.FullName);
                if (fi.Name.Contains("problem"))
                    lProblemFiles.Add(fi.FullName);
            }
            //try
            {
                Domain.ResetStaticVar();
                List<Domain> lDomains = new List<Domain>();
                List<Problem> lProblems = new List<Problem>();
                Domain dJoint = null;
                Problem pJoint = null;
                ReadAgentFiles(lDomainFiles, lProblemFiles, lDomains, lProblems);
                GetJointDomain(lDomains, lProblems, out dJoint, out pJoint);

                currentJointDomain = dJoint;
                currentJointProblem = pJoint;

                pdbPath = "PdbFiles/" + dir.Parent.Name;
                if (!Directory.Exists(pdbPath))
                {
                    Directory.CreateDirectory(pdbPath);
                }
                pdbPath += "/" + dir.Name + ".pdb";
                List<Agent> agents = null;
                List<string> lPlan = SolveFactored(lDomains, lProblems, ref agents, dJoint);

                if(highLevelPlanerType is HighLevelPlanerType.OptimalDependenciesPlanner)
                {
                    if(lPlan != null)
                    {
                        amountOfDependenciesUsed = optimalAmountOfDependenciesForCurrentProblem;//CalculateDependenciesNum(lPlan);
                        WritePlanToFile(lPlan, sOutputFile);
                        if (ExternalPlanners.unsolvableProblem || optimalAmountOfDependenciesForCurrentProblem == 0)
                        {
                            //This means that we have proved the optimality of our solution.
                            WriteResults(GetWantedName(dir.FullName), " success");
                        }
                        else
                        {
                            //This means that we did not proved the optimality of our solution, but we had an error (e.g. memory error)...
                            WriteResults(GetWantedName(dir.FullName), " partial success - not proven optimality of solution");
                        }
                    }
                    else
                    {
                        WritePlanToFile(new List<string>(), sOutputFile);
                        if (!isValidPlan)
                        {
                            WriteResults(GetWantedName(dir.FullName), " warning - fail, plan was found but was not valid");
                        }
                        else
                        {
                            WriteResults(GetWantedName(dir.FullName), " fail, plan is null");
                        }
                    }
                    Console.WriteLine();
                    return;
                }
                else if(highLevelPlanerType == HighLevelPlanerType.SingleAgentPlanner)
                {
                    if (lPlan != null)
                    {
                        WritePlanToFile(lPlan, sOutputFile);
                        WriteResults(GetWantedName(dir.FullName), " success");
                    }
                    else
                    {
                        WritePlanToFile(new List<string>(), sOutputFile);
                        WriteResults(GetWantedName(dir.FullName), " fail, plan is null");
                    }
                    Console.WriteLine();
                    return;
                }
                else if(highLevelPlanerType == HighLevelPlanerType.DependenciesGraphGenerator)
                {
                    //The plan will always be null in this planner, so just write " success", and leave it like this...
                    WritePlanToFile(new List<string>(), sOutputFile);
                    WriteResults(GetWantedName(dir.FullName), " success");
                    Console.WriteLine();
                    return;
                }
                if (creatingTracesAfterSolutionWasFound)
                {
                    return; //don't need to write results...
                }
                //Program.projResults.WriteLine(
                if (lPlan != null)
                {
                    if(lPlan.Count == 1 && lPlan.Contains(null))
                    {
                        WritePlanToFile(new List<string>(), sOutputFile);
                        WriteResults(GetWantedName(dir.FullName), " fail, public plan found, but could not ground it");
                    }
                    else if (VerifyPlan(dJoint, pJoint, lPlan))
                    {
                        PlanMakeSpan = MaxSpanCalculation(agents, lPlan, dJoint);
                        WritePlanToFile(lPlan, sOutputFile);
                        WriteResults(GetWantedName(dir.FullName), " success");
                    }
                    else
                    {
                        //Program.timeResults.WriteLine("*");
                        //Program.timeResults.Flush();
                        WriteResults(GetWantedName(dir.FullName), " plan verification failed");
                    }
                    Console.WriteLine();

                }
                else
                {
                    WritePlanToFile(new List<string>(), sOutputFile);
                    WriteResults(GetWantedName(dir.FullName), " fail, plan is null");
                }
            }
            //catch (Exception e)
            {
                //WriteResults(dir.Name , " fail, " + e.Message + ", " + e.StackTrace);
            }
        }

        private static int CalculateDependenciesNum(List<string> lPlan)
        {
            int dependenciesAmount = 0;
            foreach(string action in lPlan)
            {
                if (action.Equals(PddlBuilderForOptimalDependenciesPlanning.resetDependenciesActionName))
                {
                    dependenciesAmount++;
                }
            }
            return dependenciesAmount;
        }

        public static string GetWantedName(string path)
        {
            char splitChar = '\\';
            if (runningOnLinux)
                splitChar = '/';
            string[] split = path.Split(splitChar);
            string ans = "";
            for(int i = split.Length - 1; i >= split.Length - 2; i--)
            {
                string temp = split[i];
                if(i != split.Length - 1)
                    temp += splitChar + ans;
                ans = temp;
            }
            return ans;
        }


        public static List<KeyValuePair<string, Action>> GetActions(List<string> lActionsName, Domain dJoint, List<Agent> agents)
        {
            List<KeyValuePair<string, Action>> sPlan = new List<KeyValuePair<string, Action>>();
            foreach (string actName in lActionsName)
            {
                string sOutputName = Domain.MapGroundedActionNamesToOutputNames[actName];
                sOutputName = sOutputName.Substring(1, sOutputName.Length - 2);
                Action act = dJoint.GroundActionByName(sOutputName.Split(' '));
                bool fails = true;
                foreach (Agent agent in agents)
                {
                    if (agent.m_actions.Contains(act))
                    {
                        sPlan.Add(new KeyValuePair<string, Action>(agent.name, act));
                        fails = false;
                        break;
                    }
                }
                if (fails)
                    throw new Exception();
            }
            return sPlan;
        }


        public static int MaxSpanCalculation(List<Agent> agents, List<string> lActionsName, Domain dJoint)
        {
            List<KeyValuePair<string, Action>> sPlan = GetActions(lActionsName, dJoint, agents);
            State fullInitialState = new State(agents[0].startState);
            Dictionary<string, int> agentsTimeSteps = new Dictionary<string, int>();
            agentsTimeSteps.Add(agents[0].name, 0);
            for (int i = 1; i < agents.Count; i++)
            {
                foreach (var fact in agents[i].startState.m_lPredicates)
                    fullInitialState.AddPredicate(fact);
                agentsTimeSteps.Add(agents[i].name, 0);
            }
            Dictionary<GroundedPredicate, int> gpCost = new Dictionary<GroundedPredicate, int>();
            foreach (GroundedPredicate gp in fullInitialState.m_lPredicates)
            {
                gpCost.Add(gp, 0);
            }


            int timeSteps = 0;
            bool stop = false;
            foreach (var action in sPlan)
            {
                int cost = MaxCost(gpCost, action.Value.Preconditions.GetAllPredicates().ToList());
                if (cost < agentsTimeSteps[action.Key])
                    cost = agentsTimeSteps[action.Key];

                HashSet<Predicate> lDeleteList = new HashSet<Predicate>(), lAddList = new HashSet<Predicate>();
                fullInitialState.GetApplicableEffects(action.Value.Effects, lAddList, lDeleteList);
                foreach (GroundedPredicate dellp in lDeleteList)
                {
                    gpCost.Remove((GroundedPredicate)dellp.Negate());
                }
                foreach (GroundedPredicate addp in lAddList)
                {
                    if (!gpCost.ContainsKey(addp))
                    {
                        gpCost.Add(addp, cost + 1);
                    }
                }
                foreach (GroundedPredicate addp in lDeleteList)
                {
                    if (!gpCost.ContainsKey(addp))
                    {
                        gpCost.Add(addp, cost + 1);
                    }
                }

                agentsTimeSteps[action.Key] = cost + 1;
                fullInitialState = fullInitialState.Apply(action.Value);

            }
            int maxSpan = 0;
            foreach (Agent agent in agents)
            {
                if (agentsTimeSteps[agent.name] > maxSpan)
                    maxSpan = agentsTimeSteps[agent.name];
            }
            return maxSpan;
        }
        public static int MaxCost(Dictionary<GroundedPredicate, int> cost, List<Predicate> pre)
        {
            int MaxCost = 0;
            foreach (GroundedPredicate preGp in pre)
            {
                if (cost[preGp] > MaxCost)
                {
                    MaxCost = cost[preGp];
                }
            }
            return MaxCost;
        }


        static void ReadAgentFiles(List<string> lDomainFiles, List<string> lProblemFiles, List<Domain> lDomains, List<Problem> lProblems)
        {
            Console.WriteLine("Parsing");
            for (int i = 0; i < lDomainFiles.Count; i++)
            {
                Parser parser = new Parser();
                Domain d = parser.ParseDomain(lDomainFiles[i]);
                Problem p = parser.ParseProblem(lProblemFiles[i], d);

                lDomains.Add(d);
                lProblems.Add(p);

                domainsAndProblems.Add(new Tuple<string, string>(lDomainFiles[i], lProblemFiles[i]));
            }
            foreach (Domain d in lDomains)
            {
                foreach (Action a in d.PublicActions)
                {
                    foreach (Predicate p in a.Effects.GetAllPredicates())
                    {
                        foreach (Domain dOther in lDomains)
                        {
                            if (dOther.AlwaysConstant(p))
                                dOther.m_lAlwaysConstant.Remove(p.Name);

                        }
                    }

                }

            }
        }

        public static string ConvertAgentNameToItsUsableName(Agent agent)
        {
            string[] split = agent.name.Split(' ');
            return split[1];
        }

        private static void FindActionsWhichArePubliclyEqual(Agent agent)
        {
            Dictionary<Predicate, int> pred2id = new Dictionary<Predicate, int>();
            Dictionary<int, Predicate> id2pred = new Dictionary<int, Predicate>();
            int id = 0;
            foreach (Predicate p in agent.PublicPredicates)
            {
                pred2id[p] = id;
                id2pred[id] = p;
                id++;
            }
            List<Action> publicActions = agent.publicActions;
            Dictionary<string, HashSet<Action>> samePreconditions = new Dictionary<string, HashSet<Action>>();
            Dictionary<string, HashSet<Action>> sameEffects = new Dictionary<string, HashSet<Action>>();

            foreach (Action action in publicActions)
            {
                HashSet<Predicate> preconditions = GetPublicPredicates(agent, action.HashPrecondition);
                HashSet<Predicate> effects = GetPublicPredicates(agent, action.HashEffects);

                string preconditionsStr = predicates2id_string(pred2id, preconditions);
                string effectsStr = predicates2id_string(pred2id, effects);

                if (!samePreconditions.ContainsKey(preconditionsStr))
                {
                    samePreconditions[preconditionsStr] = new HashSet<Action>();
                }
                samePreconditions[preconditionsStr].Add(action);
                if (!sameEffects.ContainsKey(effectsStr))
                {
                    sameEffects[effectsStr] = new HashSet<Action>();
                }
                sameEffects[effectsStr].Add(action);
            }
            List<HashSet<Action>> preconditionsVals = new List<HashSet<Action>>(samePreconditions.Values);
            List<HashSet<Action>> effectsVals = new List<HashSet<Action>>(sameEffects.Values);
            List<HashSet<Action>> publiclyEqualActions = new List<HashSet<Action>>();
            foreach (HashSet<Action> pre in preconditionsVals)
            {
                if (pre.Count < 2)
                    continue;
                foreach (HashSet<Action> eff in effectsVals)
                {
                    HashSet<Action> intersection = new HashSet<Action>(pre);
                    intersection.IntersectWith(eff);
                    if (intersection.Count > 1)
                        publiclyEqualActions.Add(intersection);
                }
            }
            if (publiclyEqualActions.Count > 0)
            {
                int i = 0;
            }
        }

        private static string predicates2id_string(Dictionary<Predicate, int> pred2id, HashSet<Predicate> predicates)
        {
            List<int> ids = new List<int>();
            foreach (Predicate p in predicates)
            {
                ids.Add(pred2id[p]);
            }
            ids.Sort();
            return String.Join(",", ids);
        }

        private static HashSet<Predicate> GetPublicPredicates(Agent agent, List<Predicate> predicates)
        {
            HashSet<Predicate> publicPredicates = new HashSet<Predicate>();
            foreach (Predicate p in predicates)
            {
                if (agent.PublicPredicates.Contains(p))
                    publicPredicates.Add(p);
            }
            return publicPredicates;
        }

        public static double pdbCreationTime;
        static List<string> SolveFactored(List<Domain> lDomains, List<Problem> lProblems, ref List<Agent> m_agents, Domain joinDomain)
        {
            if (highLevelPlanerType != HighLevelPlanerType.ProjectionMafs)
            {
                projectionVersion = ProjectionVersion.NULL;
            }
            Start = DateTime.Now;
            pdbCreationTime = 0;
            Console.WriteLine("Grounding");
            BuildAgents_II.mapActionNameToAgents = new Dictionary<string, HashSet<string>>();
            bool bNewPublicFacts = true;
            HashSet<GroundedPredicate> lPublicFacts = new HashSet<GroundedPredicate>();
            for (int i = 0; i < lDomains.Count; i++)
            {
                lDomains[i].StartGrounding(lProblems[i], lPublicFacts);

            }

            while (bNewPublicFacts)
            {
                int cPublicFacts = lPublicFacts.Count;
                for (int i = 0; i < lDomains.Count; i++)
                {
                    lDomains[i].ContinueGrounding(lProblems[i], lPublicFacts);

                }
                bNewPublicFacts = lPublicFacts.Count > cPublicFacts;
            }
            List<Domain> lGrounded = new List<Domain>();
            for (int i = 0; i < lDomains.Count; i++)
            {
                lGrounded.Add(lDomains[i].FinishGrounding(i));
            }


            /* if (UseHacks)
             {
                 Console.WriteLine("Attempting hacks");
                 lPlan = SolveSingleAgent(lGrounded, lProblems);
                 if (lPlan != null)
                 {
                     WritePlanToFile(lPlan, sOutputDirectory + "/" + sOutputFile);
                     return;
                 }
                 lPlan = SolveUsingProjectedPublicActions(lGrounded, lProblems);
             }*/


            internalPlaner = PlanerType.ff_toActions;
            BuildAgents_II buildAgents = new BuildAgents_II(lDomains, lGrounded, lProblems);
            List<Agent> agents = buildAgents.ReturnAgents();

            Program.thereIsPrivateGoal = ThereIsPrivateGoal(agents);
            if (Program.thereIsPrivateGoal)
            {
                Console.WriteLine("Domain/Problem Definition Contain Private Goals");
            }


            Dictionary<string, HashSet<GroundedPredicate>> allPublicPredicate = new Dictionary<string, HashSet<GroundedPredicate>>();
            foreach (Agent agent in agents)
            {

                allPublicPredicate.Add(agent.name, new HashSet<GroundedPredicate>());
                foreach (Action publicAct in agent.publicActions)
                {
                    foreach (GroundedPredicate pre in publicAct.HashPrecondition)
                    {
                        if (agent.PublicPredicates.Contains(pre))
                        {
                            allPublicPredicate[agent.name].Add(pre);
                        }
                    }

                    foreach (GroundedPredicate eff in publicAct.HashEffects)
                    {
                        if (agent.PublicPredicates.Contains(eff))
                        {
                            allPublicPredicate[agent.name].Add(eff);
                        }
                    }
                }
                /* foreach (GroundedPredicate gp in agent.PublicPredicates)
                 {
                     allPublicPredicate[agent.name].Add(gp);
                 }*/
            }
            /*
            foreach (Agent agent in agents)
            {
                // agent.ReducePublicActions(allPublicPredicate);
            }
            */
            List<string> lPlan = null;

            if(highLevelPlanerType == HighLevelPlanerType.TestsForRotem)
            {
                Console.WriteLine("Doing tests :)");
                foreach(Agent agent in agents)
                {
                    FindActionsWhichArePubliclyEqual(agent);
                }
                lPlan = null;
            }
            else if(highLevelPlanerType == HighLevelPlanerType.ManualDebugPlanner)
            {
                Console.WriteLine("Applying a manual debug session on the problem:");
                ExternalPlanners externalPlanners = new ExternalPlanners();
                Problem jointProblem = null;
                Domain jointDomain = null;
                GetJointDomain(lDomains, lProblems, out jointDomain, out jointProblem);
                lPlan = externalPlanners.ManualSolve(jointProblem, jointDomain);
            }
            else if (highLevelPlanerType == HighLevelPlanerType.DependenciesGraphGenerator)
            {
                Console.WriteLine("Generating dependencies graph");
                DependenciesGraphGenerator.GenerateDependenciesGraph(agents, tracesFolder);
                lPlan = null;
            }
            else if (highLevelPlanerType == HighLevelPlanerType.SingleAgentPlanner)
            {
                Console.WriteLine("Planning");
                SingleAgentSolver singleAgentSolver = new SingleAgentSolver();
                lPlan = singleAgentSolver.Plan(domainsAndProblems);
            }
            else if (highLevelPlanerType == HighLevelPlanerType.OptimalDependenciesPlanner)
            {
                Console.WriteLine("Planning");
                OptimalDependenciesPlanner optimalDependenciesPlanner = new OptimalDependenciesPlanner();
                lPlan = optimalDependenciesPlanner.Plan(agents);
            }
            else if (highLevelPlanerType == HighLevelPlanerType.Projection)
            {
                Console.WriteLine("Planning");
                bool stop = false;
                while (!stop)
                {
                    stop = true;
                    string name = "";
                    GroundedPredicate currentGoal = null;
                    foreach (Agent agent in agents)
                    {
                        currentGoal = agent.GetGoal();
                        if (currentGoal != null)
                        {
                            stop = false;
                            name = agent.name;
                            break;
                        }
                    }
                    if (!stop)
                    {
                        foreach (Agent agent in agents)
                        {
                            if (!agent.name.Equals(name))
                            {
                                agent.ReceiveGoal(currentGoal);
                            }
                        }
                    }

                }

                AAdvancedProjectionActionPublisher publisher; //change this variable to control what type of publisher you want to use (collaborative or non collaborative)

                /*
                //non collaborative publisher's selectors:
                IAdvancedProjectionNonCollaborativeActionSelector selector; //change this variable to control what type of action selector you want to use
                //selector = new AdvancedProjectionAllActionsSelector(); //select this one in order to use the regular Advanced Projection Planner, that does not select actions
                //selector = new AdvancedProjectionRandomizedActionSelector();
                selector = new AdvancedProjectionDiversityActionSelector();
                //selector = new AdvancedProjectionAchievableDiversityActionSelector();
                
                publisher = new AdvancedProjectionNoCollaborationPublisher(selector, currPercentageForSelectingActionInAdvancedProjectionPlaner);
                */

                /*
                //collaborative publisher's selectors:
                IAdvancedProjectionCollaborativeActionsSelector selector; //change this variable to control what type of action selector you want to use
                //selector = new AdvancedProjectionCollaborativeRandomActionsSelector();
                selector = new AdvancedProjectionCollaborationDiversityActionSelector();
                //selector = new AdvancedProjectionCollaborationAchievableDiversityActionSelector();

                publisher = new AdvancedProjectionCollaborationPublisher(selector, currPercentageForSelectingActionInAdvancedProjectionPlaner);
                */
                if (!creatingTracesAfterSolutionWasFound)
                {
                    foreach (Agent a in agents)
                    {
                        string currentAgentFile = agentsRecordingFolder + "/" + ConvertAgentNameToItsUsableName(a) + ".csv";
                        recordingDependencyPickingPerAgent.Add(a, currentAgentFile);
                    }
                    //System.IO.Directory.CreateDirectory(tracesFolder); //create the directory if it does not exist
                }

                publisher = GetAdvancedProjectionPublisher();

                //Create the planner:
                AdvancedLandmarkProjectionPlaner planner = new AdvancedLandmarkProjectionPlaner(publisher, recordingHighLevelPlanFileName);
                lPlan = planner.Plan(agents, lDomains, lProblems, joinDomain);
            }
            else
            {
                try
                {

                    StartHighLevelPlanning = DateTime.Now;
                    if (highLevelPlanerType == HighLevelPlanerType.Landmark)
                    {
                        Console.WriteLine("Identifying landmarks");
                        bool stop = false;
                        while (!stop)
                        {
                            stop = true;
                            string name = "";
                            GroundedPredicate currentGoal = null;
                            foreach (Agent agent in agents)
                            {
                                currentGoal = agent.GetGoal();
                                if (currentGoal != null)
                                {
                                    stop = false;
                                    name = agent.name;
                                    break;
                                }
                            }
                            if (!stop)
                            {
                                foreach (Agent agent in agents)
                                {
                                    if (!agent.name.Equals(name))
                                    {
                                        agent.ReceiveGoal(currentGoal);
                                    }
                                }
                            }

                        }
                        foreach (Agent agent in agents)
                        {
                            agent.InitMutex();
                        }

                        agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, false);
                        Planer_I Planner = new Planer_I(agents);
                        Console.WriteLine("Planning");
                        lPlan = Planner.Plan();
                    }
                    else
                    {
                        if (highLevelPlanerType == HighLevelPlanerType.PDB)
                        {
                            DateTime startPdbCreation = DateTime.Now;
                            pdb = new PatternDatabase(lDomains, lProblems, agents, pdbPath);
                            pdbCreationTime = DateTime.Now.Subtract(startPdbCreation).TotalSeconds;
                            foreach (Agent agent in agents)
                            {
                                agent.InitMutex();
                            }
                            Distributed_Landmarks_Detection.Reset(agents);
                            List<Landmark> PublicAndArtificialGoals = FindPublicAndArtificialGoals(agents);

                            PdbPlaner Planner = new PdbPlaner(agents, PublicAndArtificialGoals, pdb);
                            Console.WriteLine("Planning");

                            lPlan = Planner.Plan();

                        }
                        else
                        {
                            if (highLevelPlanerType == HighLevelPlanerType.ForwardHsp)
                            {
                                bool stop = false;
                                while (!stop)
                                {
                                    stop = true;
                                    string name = "";
                                    GroundedPredicate currentGoal = null;
                                    foreach (Agent agent in agents)
                                    {
                                        currentGoal = agent.GetGoal();
                                        if (currentGoal != null)
                                        {
                                            stop = false;
                                            name = agent.name;
                                            break;
                                        }
                                    }
                                    if (!stop)
                                    {
                                        foreach (Agent agent in agents)
                                        {
                                            if (!agent.name.Equals(name))
                                            {
                                                agent.ReceiveGoal(currentGoal);
                                            }
                                        }
                                    }

                                }
                                foreach (Agent agent in agents)
                                {
                                    agent.InitMutex();
                                }
                                Distributed_Landmarks_Detection.Reset(agents);
                                PlanerHsp Planner = new PlanerHsp(agents);
                                Console.WriteLine("Planning");
                                lPlan = Planner.Plan();
                            }
                            else
                            {
                                if (highLevelPlanerType == HighLevelPlanerType.BackwardHsp)
                                {
                                    bool stop = false;
                                    List<GroundedPredicate> publishPublic = new List<GroundedPredicate>();
                                    List<GroundedPredicate> nextPublishPublic = new List<GroundedPredicate>();
                                    foreach (Agent a in agents)
                                    {
                                        publishPublic.AddRange(a.InitBackwardHspGraph());
                                    }
                                    bool outFlag = false;
                                    while (!stop)
                                    {
                                        stop = true;
                                        outFlag = false;
                                        foreach (Agent agent in agents)
                                        {
                                            nextPublishPublic.AddRange(agent.UpdateBackwardHspGraph(publishPublic, out outFlag));
                                            if (outFlag)
                                            {
                                                stop = false;
                                            }
                                        }
                                        publishPublic = nextPublishPublic;
                                    }

                                    foreach (Agent agent in agents)
                                    {
                                        agent.InitMutex();
                                    }
                                    Distributed_Landmarks_Detection.Reset(agents);
                                    // agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents);
                                    PlanerHspII Planner = new PlanerHspII(agents);
                                    Console.WriteLine("Planning");
                                    lPlan = Planner.Plan();

                                }
                                else
                                {
                                    if (highLevelPlanerType == HighLevelPlanerType.LandmarkAndHsp)
                                    {
                                        bool stop = false;
                                        while (!stop)
                                        {
                                            stop = true;
                                            string name = "";
                                            GroundedPredicate currentGoal = null;
                                            foreach (Agent agent in agents)
                                            {
                                                currentGoal = agent.GetGoal();
                                                if (currentGoal != null)
                                                {
                                                    stop = false;
                                                    name = agent.name;
                                                    break;
                                                }
                                            }
                                            if (!stop)
                                            {
                                                foreach (Agent agent in agents)
                                                {
                                                    if (!agent.name.Equals(name))
                                                    {
                                                        agent.ReceiveGoal(currentGoal);
                                                    }
                                                }
                                            }

                                        }
                                        foreach (Agent agent in agents)
                                        {
                                            agent.InitMutex();
                                        }

                                        agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, false);

                                        PlanerHspAndLandmarks Planner = new PlanerHspAndLandmarks(agents);

                                        Console.WriteLine("Planning..");

                                        lPlan = Planner.Plan();
                                    }
                                    else
                                    {
                                        if (highLevelPlanerType == HighLevelPlanerType.WeightedLandmarkAndHsp)
                                        {
                                            bool stop = false;
                                            while (!stop)
                                            {
                                                stop = true;
                                                string name = "";
                                                GroundedPredicate currentGoal = null;
                                                foreach (Agent agent in agents)
                                                {
                                                    currentGoal = agent.GetGoal();
                                                    if (currentGoal != null)
                                                    {
                                                        stop = false;
                                                        name = agent.name;
                                                        break;
                                                    }
                                                }
                                                if (!stop)
                                                {
                                                    foreach (Agent agent in agents)
                                                    {
                                                        if (!agent.name.Equals(name))
                                                        {
                                                            agent.ReceiveGoal(currentGoal);
                                                        }
                                                    }
                                                }

                                            }
                                            foreach (Agent agent in agents)
                                            {
                                                agent.InitMutex();
                                            }
                                            agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, false);
                                            PlanerWeightedLandmarkAndHsp Planner = new PlanerWeightedLandmarkAndHsp(agents);
                                            Console.WriteLine("Planning");
                                            lPlan = Planner.Plan();
                                        }
                                        else
                                        {
                                            if (highLevelPlanerType == HighLevelPlanerType.SophisticatedProjection)
                                            {
                                                bool stop = false;
                                                while (!stop)
                                                {
                                                    stop = true;
                                                    string name = "";
                                                    GroundedPredicate currentGoal = null;
                                                    foreach (Agent agent in agents)
                                                    {
                                                        currentGoal = agent.GetGoal();
                                                        if (currentGoal != null)
                                                        {
                                                            stop = false;
                                                            name = agent.name;
                                                            break;
                                                        }
                                                    }
                                                    if (!stop)
                                                    {
                                                        foreach (Agent agent in agents)
                                                        {
                                                            if (!agent.name.Equals(name))
                                                            {
                                                                agent.ReceiveGoal(currentGoal);
                                                            }
                                                        }
                                                    }

                                                }
                                                foreach (Agent agent in agents)
                                                {
                                                    agent.InitMutex();
                                                }
                                                //  agents = AdvancedLandmarkProjectionAgents.CreateProjAgents(agents, lDomains, lProblems);

                                                agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, false);
                                                PlanerHspAndLandmarks Planner = new PlanerHspAndLandmarks(agents);
                                                Console.WriteLine("Planning");
                                                lPlan = Planner.Plan();
                                            }
                                            else
                                            {
                                                if (highLevelPlanerType == HighLevelPlanerType.PDBMafs)
                                                {
                                                    MapsVertex.pdb = new PatternDatabase(lDomains, lProblems, agents, pdbPath);
                                                    bool stop = false;
                                                    while (!stop)
                                                    {
                                                        stop = true;
                                                        string name = "";
                                                        GroundedPredicate currentGoal = null;
                                                        foreach (Agent agent in agents)
                                                        {
                                                            currentGoal = agent.GetGoal();
                                                            if (currentGoal != null)
                                                            {
                                                                stop = false;
                                                                name = agent.name;
                                                                break;
                                                            }
                                                        }
                                                        if (!stop)
                                                        {
                                                            foreach (Agent agent in agents)
                                                            {
                                                                if (!agent.name.Equals(name))
                                                                {
                                                                    agent.ReceiveGoal(currentGoal);
                                                                }
                                                            }
                                                        }

                                                    }
                                                    foreach (Agent agent in agents)
                                                    {
                                                        agent.InitMutex();
                                                    }


                                                    Console.WriteLine("Planning");

                                                    MapsPlanner Planner = new MapsPlanner(agents, lDomains, lProblems);

                                                    StartGrounding = DateTime.Now;
                                                    lPlan = Planner.Plan();

                                                }
                                                else
                                               if (highLevelPlanerType == HighLevelPlanerType.MafsLandmark)
                                                {
                                                    bool stop = false;
                                                    while (!stop)
                                                    {
                                                        stop = true;
                                                        string name = "";
                                                        GroundedPredicate currentGoal = null;
                                                        foreach (Agent agent in agents)
                                                        {
                                                            currentGoal = agent.GetGoal();
                                                            if (currentGoal != null)
                                                            {
                                                                stop = false;
                                                                name = agent.name;
                                                                break;
                                                            }
                                                        }
                                                        if (!stop)
                                                        {
                                                            foreach (Agent agent in agents)
                                                            {
                                                                if (!agent.name.Equals(name))
                                                                {
                                                                    agent.ReceiveGoal(currentGoal);
                                                                }
                                                            }
                                                        }

                                                    }
                                                    foreach (Agent agent in agents)
                                                    {
                                                        agent.InitMutex();
                                                    }

                                                    agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, true);

                                                    Console.WriteLine("Planning");

                                                    MapsPlanner Planner = new MapsPlanner(agents, lDomains, lProblems);

                                                    StartGrounding = DateTime.Now;
                                                    lPlan = Planner.Plan();

                                                }
                                                else
                                               if (highLevelPlanerType == HighLevelPlanerType.Mafsff)
                                                {
                                                    bool stop = false;
                                                    while (!stop)
                                                    {
                                                        stop = true;
                                                        string name = "";
                                                        GroundedPredicate currentGoal = null;
                                                        foreach (Agent agent in agents)
                                                        {
                                                            currentGoal = agent.GetGoal();
                                                            if (currentGoal != null)
                                                            {
                                                                stop = false;
                                                                name = agent.name;
                                                                break;
                                                            }
                                                        }
                                                        if (!stop)
                                                        {
                                                            foreach (Agent agent in agents)
                                                            {
                                                                if (!agent.name.Equals(name))
                                                                {
                                                                    agent.ReceiveGoal(currentGoal);
                                                                }
                                                            }
                                                        }

                                                    }
                                                    foreach (Agent agent in agents)
                                                    {
                                                        agent.InitMutex();
                                                    }

                                                    agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, true);

                                                    Console.WriteLine("Planning");

                                                    MapsPlanner Planner = new MapsPlanner(agents, lDomains, lProblems);

                                                    StartGrounding = DateTime.Now;
                                                    lPlan = Planner.PreferableFFPlan();

                                                }
                                                else
                                                {
                                                    if (highLevelPlanerType == HighLevelPlanerType.ProjectionMafs)
                                                    {

                                                        bool stop = false;
                                                        while (!stop)
                                                        {
                                                            stop = true;
                                                            string name = "";
                                                            GroundedPredicate currentGoal = null;
                                                            foreach (Agent agent in agents)
                                                            {
                                                                currentGoal = agent.GetGoal();
                                                                if (currentGoal != null)
                                                                {
                                                                    stop = false;
                                                                    name = agent.name;
                                                                    break;
                                                                }
                                                            }
                                                            if (!stop)
                                                            {
                                                                foreach (Agent agent in agents)
                                                                {
                                                                    if (!agent.name.Equals(name))
                                                                    {
                                                                        agent.ReceiveGoal(currentGoal);
                                                                    }
                                                                }
                                                            }

                                                        }
                                                        foreach (Agent agent in agents)
                                                        {
                                                            agent.InitMutex();
                                                        }

                                                        agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, true);

                                                        Console.WriteLine("Planning");

                                                        MapsPlanner Planner = new MapsPlanner(agents, lDomains, lProblems);
                                                        if (!selectingDependenciesToUseInTheHueristic)
                                                        {
                                                            //Do this in order to run a regular MAFS planner, without limiting the published states:
                                                            MapsPlanner.MAFSPublisher = new PublishEverything();
                                                            MapsPlanner.dependenciesSelectionPreperation = new NotSelectionPreperation();
                                                            MapsPlanner.tracesHandler = new DontHandleTraces();
                                                        }
                                                        else
                                                        {
                                                            //Do this in order to run MAFS planner while limiting the revealed dependencies:
                                                            MapsPlanner.MAFSPublisher = new PublishOnlyRevealedDependencies();
                                                            MapsPlanner.dependenciesSelectionPreperation = new DoSelectionPreperation();
                                                            //MapsPlanner.tracesHandler = new TracesHandler();
                                                            //MapsPlanner.tracesHandler = new TracesHandlerRealStartState();
                                                            MapsPlanner.tracesHandler = new DontHandleTraces();
                                                        }

                                                        if (!creatingTracesAfterSolutionWasFound)
                                                        {
                                                            foreach (Agent a in agents)
                                                            {
                                                                string currentAgentFile = agentsRecordingFolder + "/" + ConvertAgentNameToItsUsableName(a) + ".csv";
                                                                recordingDependencyPickingPerAgent.Add(a, currentAgentFile);
                                                            }
                                                            //System.IO.Directory.CreateDirectory(tracesFolder); //create the directory if it does not exist
                                                        }

                                                        AAdvancedProjectionActionPublisher publisher = GetAdvancedProjectionPublisher();

                                                        Planner.PrepareDependenciesSelection(agents, publisher, lDomains, lProblems);
                                                        Planner.PublishStartStatesForTraces();
                                                        Planner.SetIParentForStartStates();

                                                        StartGrounding = DateTime.Now;

                                                        lPlan = Planner.PreferablePlan();
                                                        Console.WriteLine("Was here....");

                                                        // calculate leakage:
                                                        //LeakageCalculatorAllAgents calculatorAllAgents = new LeakageCalculatorAllAgents();
                                                        //calculatorAllAgents.CalculateLeakage(Planner.MapsAgents);
                                                    }
                                                    else
                                                    if (highLevelPlanerType == HighLevelPlanerType.DistrebutedProjectionMafs)
                                                    {
                                                        bool stop = false;
                                                        while (!stop)
                                                        {
                                                            stop = true;
                                                            string name = "";
                                                            GroundedPredicate currentGoal = null;
                                                            foreach (Agent agent in agents)
                                                            {
                                                                currentGoal = agent.GetGoal();
                                                                if (currentGoal != null)
                                                                {
                                                                    stop = false;
                                                                    name = agent.name;
                                                                    break;
                                                                }
                                                            }
                                                            if (!stop)
                                                            {
                                                                foreach (Agent agent in agents)
                                                                {
                                                                    if (!agent.name.Equals(name))
                                                                    {
                                                                        agent.ReceiveGoal(currentGoal);
                                                                    }
                                                                }
                                                            }

                                                        }
                                                        foreach (Agent agent in agents)
                                                        {
                                                            agent.InitMutex();
                                                        }

                                                        agents = Distributed_Landmarks_Detection.Landmarks_Detection(agents, true);

                                                        Console.WriteLine("Planning");

                                                        MapsPlanner Planner = new MapsPlanner(agents, lDomains, lProblems);

                                                        StartGrounding = DateTime.Now;
                                                        lPlan = Planner.DistrebutedPreferablePlan();

                                                    }
                                                    else
                                                    {
                                                        Console.WriteLine("highLevelPlanerType did not selected");
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                    }
                }
                catch (Exception ex)
                {
                    KillPlanners();
                    return null;
                }
            }
            End = DateTime.Now;
            KillPlanners();
            m_agents = agents;
            return lPlan;
        }

        public static List<Landmark> FindPublicAndArtificialGoals(List<Agent> agents)
        {
            List<Landmark> PublicAndArtificialGoals = new List<Landmark>();
            foreach (Agent agent in agents)
            {
                List<Landmark> agentsGoal = agent.GetPublicAndArtificialGoal();

                for (int i = 0; i < agentsGoal.Count; i++)
                {
                    Landmark newGoal = agentsGoal.ElementAt(i);
                    if (!PublicAndArtificialGoals.Contains(newGoal, new LandmarkEqualityComparer()))
                    {
                        PublicAndArtificialGoals.Add(newGoal);
                    }
                }
            }
            return PublicAndArtificialGoals;
        }

        private static List<string> SolveUsingProjectedPublicActions(List<Domain> lGrounded, List<Problem> lProblems)
        {
            Console.WriteLine("Attempting solving using public actions only");
            List<Action> lAllPublicActions = new List<Action>();
            foreach (Domain d in lGrounded)
                lAllPublicActions.AddRange(d.GetProjectedPublicActions());
            Domain dJoint = lGrounded[0].Clone();
            dJoint.Actions = lAllPublicActions;
            Problem pJoint = lProblems[0].Clone();
            pJoint.Domain = dJoint;
            //BUGBUG - may need to copy all initial public predicates to the joint problem
            bool bUnsolvable = false;
            State s = new State(pJoint);
            foreach (GroundedPredicate gp in pJoint.Known)
                s.AddPredicate(gp);
            ExternalPlanners externalPlanners = new ExternalPlanners();
            List<string> lPlan = externalPlanners.FFPlan(dJoint, pJoint, s, null, null, 2 * 60 * 1000, out bUnsolvable);
            if (bUnsolvable)
                Console.WriteLine("Cannot solve the problem using public actions only");
            else if (lPlan != null)
            {
                Console.WriteLine("Solved by public actions only");
                foreach (string sAction in lPlan)
                    Domain.MapGroundedActionNamesToOutputNames[sAction] = "(" + sAction + ")";
                return lPlan;
            }
            return null;
        }

        private static List<string> SolveSingleAgent(List<Domain> lDomains, List<Problem> lProblems)
        {
            Console.WriteLine("Attempting single agent hacks");

            List<string> lPlan = null;
            for (int i = 0; i < lDomains.Count; i++)
            {
                State s = new State(lProblems[i]);
                foreach (GroundedPredicate gp in lProblems[i].Known)
                    s.AddPredicate(gp);
                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                lPlan = externalPlanners.FFPlan(lDomains[i], lProblems[i], s, null, null, 2 * 60 * 1000, out bUnsolvable);
                if (bUnsolvable)
                    Console.WriteLine("Agent " + i + " cannot solve the problem alone");
                else if (lPlan != null)
                {
                    Console.WriteLine("Solved by agent " + i);
                    foreach (string sAction in lPlan)
                        Domain.MapGroundedActionNamesToOutputNames[sAction] = "(" + sAction + ")";
                    return lPlan;
                }
            }
            return null;
        }

        public static void WritePlanToFile(List<string> lPlan, string filePath)
        {

            StreamWriter swOutput = new StreamWriter(filePath);

            if (lPlan != null)
            {
                for (int i = 0; i < lPlan.Count; i++)
                {
                    string sOutputName;
                    if (Domain.MapGroundedActionNamesToOutputNames.Keys.Contains(lPlan[i]))
                        sOutputName = Domain.MapGroundedActionNamesToOutputNames[lPlan[i]];
                    else
                        sOutputName = lPlan[i];
                    swOutput.WriteLine(i + " : " + sOutputName);
                    Console.WriteLine(i + " : " + sOutputName);
                }
            }
            swOutput.Close();

        }

        public static bool CanDo(Action act, HashSet<GroundedPredicate> set)
        {
            bool f = true;
            foreach (GroundedPredicate pre in act.HashPrecondition)
            {
                if (!set.Contains(pre))
                {
                    f = false;
                    break;
                }
            }
            return f;
        }
        private static void ParseAll(DirectoryInfo di, string sOutputPlanFile)
        {
            Start = new DateTime(0);
            StartHighLevelPlanning = new DateTime(0);
            StartGrounding = new DateTime(0);
            End = new DateTime(0);
            PlanCost = -1;
            PlanMakeSpan = -1;

            Console.WriteLine("Scanning directory " + di.Name);
            bool bContainsRealDirectories = false;
            int cSubs = 0;
            if (di.GetDirectories().Length != 0)
            {
                foreach (DirectoryInfo diSub in di.GetDirectories().OrderBy(d => d.Name.ToString()))
                {
                    if (!diSub.Name.ToLower().Contains("pdb"))
                    {
                        ParseAll(diSub, sOutputPlanFile);
                        bContainsRealDirectories = true;
                        cSubs++;
                    }
                }
            }
            if (!bContainsRealDirectories)
            {
                if (di.ToString().Contains("PdbFiles"))
                    return;

                if (testingProjectionWithLessDependenciesRevealed)
                {
                    if (creatingTracesAfterSolutionWasFound)
                    {
                        tracesFolder = tracesFolderForSavingTraces;
                        System.IO.Directory.CreateDirectory(tracesFolder); //create the directory if it does not exist
                    }
                    else
                    {
                        //create recording folder:
                        string currentRecordingFolder = recordingFolderWithPercentage + "/" + di.Name + "/Round_" + currentParsingRound;
                        System.IO.Directory.CreateDirectory(currentRecordingFolder); //create the directory if it does not exist
                        recordingDependencyPickingAllTogether = currentRecordingFolder + "/AllTogether.csv";
                        recordingHighLevelPlanFileName = currentRecordingFolder + "/HighLevelPlan.csv";

                        agentsRecordingFolder = currentRecordingFolder + "/Agents";
                        //System.IO.Directory.CreateDirectory(agentsRecordingFolder); //create the directory if it does not exist
                        recordingDependencyPickingPerAgent = new Dictionary<Agent, string>();

                        /*
                        //leakage traces:
                        tracesFolder = currentRecordingFolder + @"\traces";
                        System.IO.Directory.CreateDirectory(tracesFolder); //create the directory if it does not exist
                        agentsTraces = new Dictionary<Agent, AdvandcedProjectionActionSelection.PrivacyLeakageCalculation.LeakageTrace>();
                        */

                        //golden standard calculation:
                        amountOfDependenciesUsed = 0;
                        amountOfDependenciesUsedInPlanningProcess = 0;
                        goldenStandardCurrentDirectory = goldenStandardDomainDirectory + "/" + di.Name;
                        System.IO.Directory.CreateDirectory(goldenStandardCurrentDirectory);
                        if (!alreadySolved.ContainsKey(di.Name))
                        {
                            alreadySolved.Add(di.Name, false);
                        }
                        currentProblemName = di.Name;
                        //amount of dependencies to reveal:
                        amountOfDependenciesPublished = 0;

                        sOutputPlanFile = currentRecordingFolder + "/Plan.txt";
                    }

                    //clear traces anyways...
                    AdvandcedProjectionActionSelection.PrivacyLeakageCalculation.LeakageTrace.ClearTraces();
                }

                /* previous...
                if (sOutputPlanFile == "")
                    sOutputPlanFile = "Plan.txt";
                else
                {
                    sOutputPlanFile += @"\Plan.txt";
                }
                */
                ResetStaticFields();

                Vertex.agents = new List<Agent>();
                Vertex.ffLplan = new List<string>();
                Vertex.map = new Dictionary<string, int>();
                Vertex.forwardSearch = null;
                Vertex.hsp = null;

                GC.Collect();


                //ReadAgentFiles(di, sOutputPlanFile);


                cancellationTokenSource = new CancellationTokenSource();
                Task t = new Task(() => ReadAgentFiles(di, sOutputPlanFile), cancellationTokenSource.Token);

                //t.Name = "ReadAgentFiles " + di.Name;
                t.Start();
                //if (t.Join(maxTimeInMinutes * 60 * 1000))
                if (t.Wait(5000))
                {
                }
                else
                {
                    //t.Abort();
                    cancellationTokenSource.Cancel();
                    
                    // Program.timeResults.WriteLine("*");
                    //Program.timeResults.Flush();
                    End = DateTime.Now; //write the total time it took until the failure...
                    t.Wait();
                    Console.WriteLine("Done*************************************************************************************");
                    Thread.Sleep(1000);
                    //writing an empty plan file
                    if (!creatingTracesAfterSolutionWasFound)
                    {
                        if (highLevelPlanerType == HighLevelPlanerType.OptimalDependenciesPlanner && planForOptimalAmountOfDependenciesForCurrentProblem != null)
                        {
                            amountOfDependenciesUsed = optimalAmountOfDependenciesForCurrentProblem;//CalculateDependenciesNum(lPlan);
                            WritePlanToFile(planForOptimalAmountOfDependenciesForCurrentProblem, sOutputPlanFile);
                            WriteResults(GetWantedName(di.FullName), " partial success - timeout while improving the dependencies amount");
                        }
                        else
                        {
                            StreamWriter sw = new StreamWriter(sOutputPlanFile + "plan.txt");
                            sw.Close();
                            WriteResults(GetWantedName(di.FullName), " failed - timeout");
                        }
                    }
                }

                KillPlanners();
                // List<Process> lPlanningProcesses = GetPlanningProcesses();
                //KillAll(lPlanningProcesses);
            }
        }

        private static void ResetStaticFields()
        {
            Argument.ResetStaticFields();
            MapsVertex.ResetStaticFields();
            MapsPlanner.ResetStaticFields();
            Predicate.ResetStaticFields();
            //Reset the time measuring fields:
            averageTimeForCreatingDependencies = -1;
            minTimeForCreatingDependencies = -1;
            maxTimeForCreatingDependencies = -1;
            totalTimeForCreatingDependencies = -1;
            timeForSelectingDependencies = -1;
        }

        public static void SaveTimeMeasurmentsForCreatingDependencies(List<DateTime> dependenciesProjectionStartTimes, List<DateTime> dependenciesProjectionEndTimes)
        {
            if (dependenciesProjectionStartTimes.Count != dependenciesProjectionEndTimes.Count)
            {
                throw new Exception("The start and end times must be of the same length, it is the amount of agents...");
            }
            double sum = 0;
            double min = double.MaxValue;
            double max = -1;
            for (int i = 0; i < dependenciesProjectionStartTimes.Count; i++)
            {
                DateTime start = dependenciesProjectionStartTimes[i];
                DateTime end = dependenciesProjectionEndTimes[i];
                double seconds = end.Subtract(start).TotalSeconds;
                sum += seconds;
                if (seconds < min)
                {
                    min = seconds;
                }
                if (seconds > max)
                {
                    max = seconds;
                }
            }
            totalTimeForCreatingDependencies = sum;
            averageTimeForCreatingDependencies = sum / dependenciesProjectionStartTimes.Count;
            minTimeForCreatingDependencies = min;
            maxTimeForCreatingDependencies = max;
        }

        public static void SaveTimeMeasurmentForSelectingDependencies(DateTime dependenciesSelectionStartTime, DateTime dependenciesSelectionEndTime)
        {
            timeForSelectingDependencies = dependenciesSelectionEndTime.Subtract(dependenciesSelectionStartTime).TotalSeconds;
        }

        public static List<Process> GetPlanningProcesses()
        {
            List<Process> l = new List<Process>();
            Process[] processes = Process.GetProcesses();
            foreach (Process p in processes)
            {
                if (p.ProcessName.ToLower().Contains("downward") || p.ProcessName.ToLower().Contains(currentFFProcessName))
                    l.Add(p);
            }
            return l;
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
                        Thread.Sleep(40);
                        // p.WaitForExit();
                        p.Close();


                    }
                }
                catch (Exception e)
                {
                    //Console.WriteLine("*");
                }


            }


        }
        private static void RunUsingProcesses(DirectoryInfo di, string sOutputPlanFile)
        {
            Start = new DateTime(0);
            StartHighLevelPlanning = new DateTime(0);
            StartGrounding = new DateTime(0);
            End = new DateTime(0);
            PlanCost = -1;
            PlanMakeSpan = -1;

            Console.WriteLine("Scanning directory " + di.Name);
            bool bContainsRealDirectories = false;
            int cSubs = 0;
            if (di.GetDirectories().Length != 0)
            {
                foreach (DirectoryInfo diSub in di.GetDirectories().OrderBy(d => d.Name.ToString()))
                {
                    if (!diSub.Name.ToLower().Contains("pdb"))
                    {
                        RunUsingProcesses(diSub, sOutputPlanFile);
                        bContainsRealDirectories = true;
                        cSubs++;
                    }
                }
            }
            if (!bContainsRealDirectories)
            {
                if (di.ToString().Contains("PdbFiles"))
                    return;

                Process p = new Process();
                p.StartInfo.FileName = "GPPP.exe";

                p.StartInfo.Arguments = "\"" + di.FullName + "\"";// "\"" + +"\",\"" + sOutputPlanFile + "\"";
                p.Start();
                if (!p.WaitForExit(30 * 60 * 1000))
                {
                    p.Kill();
                    p.WaitForExit();
                }
                KillPlanners();
            }
        }


        public static void KillPlanners()
        {
            /*oreach (Process p in Process.GetProcesses())
            {
                try
                {
                    if (p.ProcessName.StartsWith("ff") || p.ProcessName.StartsWith("downwards"))
                        p.Kill();
                }
                catch (Exception e)
                {
                  //  Console.Write("*");
                }
            }*/
            List<Process> lPlanningProcesses = GetPlanningProcesses();
            KillAll(lPlanningProcesses);

        }

        public static int ffMessageCounter = 0;

        public static void WriteResults(string sDomain, string sMsg)
        {
            Console.WriteLine(sDomain + " " + sMsg);
            swResults = new StreamWriter(outputPath + "/Results.txt", true);
            swResults.WriteLine(sDomain + ", " + sMsg.Replace(",", ":") + ", " + PlanCost + ", " + PlanMakeSpan
               + "," + makeSpanPlanTime
               + "," + (End.Subtract(Start).TotalSeconds - pdbCreationTime)
                 //+ "," + (StartGrounding.Subtract(StartHighLevelPlanning)).TotalSeconds
                 //  + "," + (StartGrounding - StartHighLevelPlanning).TotalSeconds
                 //     + "," + (End.Subtract(StartGrounding).TotalSeconds)
                 + "," + sendedStateCounter
                 + "," + StateExpendCounter
                 + "," + MapsPlanner.generateCounter
                 + "," + amountOfDependenciesUsed
                 + "," + amountOfDependenciesPublished
                 + "," + amountOfDependenciesUsedInPlanningProcess
                 + "," + averageTimeForCreatingDependencies
                 + "," + minTimeForCreatingDependencies
                 + "," + maxTimeForCreatingDependencies
                 + "," + totalTimeForCreatingDependencies
                 + "," + timeForSelectingDependencies
               //  + "," + ffMessageCounter
               //  + "," + countMacro
               // + "," + countAvgPerMacro
               );
            swResults.Close();
            Console.WriteLine("Time: " + (End.Subtract(Start).TotalSeconds - pdbCreationTime));
        }
        public static void CreateMABlocksWorld(string sPath, int cMinArms, int cMaxArms, int cMinStacksPerArm, int cMaxStacksPerArm, int cMinBlocks, int cMaxBlocks, int cBlocksStep)
        {
            for (int cArms = cMinArms; cArms <= cMaxArms; cArms += 1)
            {
                for (int cStacks = cMinStacksPerArm; cStacks <= cMaxStacksPerArm; cStacks += 1)
                {
                    for (int cBlocks = cMinBlocks; cBlocks <= cMaxBlocks; cBlocks += cBlocksStep)
                    {
                        MABlocksWorld2 world = new MABlocksWorld2(cBlocks, cArms, cStacks);
                        world.WriteFactoredDomains(sPath + "/" + world.Name);
                        world.WriteFactoredProblems(sPath + "/" + world.Name);
                    }

                }
            }
        }
        public static void CreateMALogistics(string sPath, int cMinAreas, int cMaxAreas, int cMinCitiesPerArea, int cMaxCitiesPerArea, int cMincPackages, int cMaxcPackages, int cBlocksStep)
        {
            for (int cAreas = cMinAreas; cAreas <= cMaxAreas; cAreas += 1)
            {
                for (int cCitiesPerArea = cMinCitiesPerArea; cCitiesPerArea <= cMaxCitiesPerArea; cCitiesPerArea += 1)
                {
                    for (int cPackages = cMincPackages; cPackages <= cMaxcPackages; cPackages += cBlocksStep)
                    {
                        MALogistics world = new MALogistics(cPackages, cAreas, cCitiesPerArea);
                        world.WriteFactoredDomains(sPath + "/" + world.Name);
                        world.WriteFactoredProblems(sPath + "/" + world.Name);
                    }

                }
            }
        }

        public static bool ThereIsPrivateGoal(List<Agent> agents)
        {
            HashSet<GroundedPredicate> allPublicFacts = new HashSet<GroundedPredicate>();
            foreach (Agent a in agents)
            {
                allPublicFacts.UnionWith(a.PublicPredicates);
            }

            foreach (Agent a in agents)
            {
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    if (!allPublicFacts.Contains(goalPredicate))
                        return true;
                }

            }
            return false;
        }

        static void Experiment(string folderPath, string resultsFolderPath, string recordingFolderPath, bool regularExperiment, bool runSpecificPercentage, double chosenPercentage)
        {
            List<double> percentages = new List<double>();
            if (runSpecificPercentage)
            {
                percentages.Add(chosenPercentage);
            }
            else
            {
                if (!regularExperiment)
                {
                    for (double i = 0; i <= 1; i += 0.05)
                    {
                        percentages.Add(i);
                    }
                }
                if (!percentages.Contains(1))
                {
                    percentages.Add(1);
                }
            }

            alreadySolved = new Dictionary<string, bool>();

            for (int j = 0; j < percentages.Count; j++)
            {
                double percentage = percentages[j];
                outputPath = resultsFolderPath + "/percentage_" + percentage;
                try
                {
                    // Determine whether the directory exists.
                    if (!Directory.Exists(outputPath))
                    {
                        // Try to create the directory.
                        DirectoryInfo di = Directory.CreateDirectory(outputPath);
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error creating a directory: " + e.ToString());
                }

                recordingFolderWithPercentage = recordingFolderPath + "/percentage_" + percentage;
                try
                {
                    // Determine whether the directory exists.
                    if (!Directory.Exists(recordingFolderWithPercentage))
                    {
                        // Try to create the directory.
                        DirectoryInfo di = Directory.CreateDirectory(recordingFolderWithPercentage);
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error creating a directory: " + e.ToString());
                }

                currPercentageForSelectingActionInAdvancedProjectionPlaner = percentage;
                Console.WriteLine("*****************************************************************************");
                Console.WriteLine("Current percentage is: " + percentage);
                //run the solvers:
                domainFolderPath = folderPath;

                //All are deterministic except the Random approach, so only the Random one will be done 15 times:
                int amountOfReturns = 1;
                if (typeOfSelector.Equals("Random"))
                {
                    amountOfReturns = 10;
                }

                for (int i = 0; i < amountOfReturns; i++)
                {
                    currentParsingRound = i;
                    Console.WriteLine("*****************************************************************************");
                    Console.WriteLine("Current parsing round is: " + i);

                    ParseAll(new DirectoryInfo(folderPath), outputPath);
                }
            }
        }

        static void fixExperimentsResults(string resultsFolder, string outputFile)
        {
            string[] directories = Directory.GetDirectories(resultsFolder);

            using (System.IO.StreamWriter outFile = new System.IO.StreamWriter(outputFile))
            {
                string header = "Percentage of actions selected, folder name, success/failure, plan cost, plan make span, ? makespan plan time ?, total time, ? senderstate counter ?, ? state expend counter ?, ? generate counter ?, amount of dependencies used, amount of dependecies published, amount of dependencies used in planning process (MAFS)";
                header += ", avg dependencies creation time, min dependencies creation time, max dependencies creation time, total dependencies creation time, time for dependencies selection";
                outFile.WriteLine(header);
                foreach (string dir in directories)
                {
                    char splitChar = '\\';
                    if (runningOnLinux)
                        splitChar = '/';
                    string[] split = dir.Split(splitChar);
                    string percentage = split[split.Length - 1].Split('_')[1];

                    string line;
                    System.IO.StreamReader file = new System.IO.StreamReader(dir + "/Results.txt");
                    while ((line = file.ReadLine()) != null)
                    {
                        line = percentage + "," + line;
                        outFile.WriteLine(line);
                    }

                    file.Close();
                }
            } 

            
        }

        static AAdvancedProjectionActionPublisher GetAdvancedProjectionPublisher()
        {
            if (dependencyUsed) //selecting dependencies
            {
                AAdvancedProjectionDependenciesSelector selector = null;
                if(typeOfSelector == "Random")
                {
                    selector = new AdvancedProjectionRandomizedDependeciesSelector();
                }
                else if(typeOfSelector == "Actions_Achiever")
                {
                    selector = new AdvancedProjectionActionsAchieverDependeciesSelector();
                }
                else if(typeOfSelector == "Public_Predicates_Achiever")
                {
                    selector = new AdvancedProjectionPublicPredicatesAchieverDependenciesSelector();
                }
                else if (typeOfSelector == "New_Actions_Achiever")
                {
                    selector = new AdvancedProjectionNewActionsAchieverDependeciesSelector();
                }
                else if (typeOfSelector == "New_Public_Predicates_Achiever")
                {
                    selector = new AdvancedProjectionNewPublicPredicatesAchieverDependenciesSelector();
                }
                else if(typeOfSelector == "Actions_Achiever_Without_Negation")
                {
                    selector = new AdvancedProjectionActionsAchieverWithoutNegationDependeciesSelector();
                }
                else if(typeOfSelector == "Public_Predicates_Achiever_Without_Negation")
                {
                    selector = new AdvancedProjectionPublicPredicatesAchieverWithoutNegationDependenciesSelector();
                }

                return new AdvancedProjectionDependeciesPublisher(selector, currPercentageForSelectingActionInAdvancedProjectionPlaner, recordingDependencyPickingPerAgent, recordingDependencyPickingAllTogether);
            }
            else //selecting actions
            {
                if (collaborationUsed)
                {
                    IAdvancedProjectionCollaborativeActionsSelector selector = null;
                    if (typeOfSelector == "Random")
                    {
                        selector = new AdvancedProjectionCollaborativeRandomActionsSelector();
                    }
                    else if (typeOfSelector == "Diversity")
                    {
                        selector = new AdvancedProjectionCollaborationDiversityActionSelector();
                    }
                    else if (typeOfSelector == "Achievable_Diversity")
                    {
                        selector = new AdvancedProjectionCollaborationAchievableDiversityActionSelector();
                    }

                    return new AdvancedProjectionCollaborationPublisher(selector, currPercentageForSelectingActionInAdvancedProjectionPlaner);
                }
                else
                {
                    IAdvancedProjectionNonCollaborativeActionSelector selector = null;
                    if (typeOfSelector == "Random")
                    {
                        selector = new AdvancedProjectionRandomizedActionSelector();
                    }
                    else if (typeOfSelector == "Diversity")
                    {
                        selector = new AdvancedProjectionDiversityActionSelector();
                    }
                    else if (typeOfSelector == "Achievable_Diversity")
                    {
                        selector = new AdvancedProjectionAchievableDiversityActionSelector();
                    }

                    return new AdvancedProjectionNoCollaborationPublisher(selector, currPercentageForSelectingActionInAdvancedProjectionPlaner);
                }
            } 
        }

        static void RunExperimentOnAlotOfDomains(Dictionary<string, int[]> selectorsAndDomains, string plannerType, bool choosingPercentages)
        {
            int[] selectorIndexesToUse = selectorsAndDomains["selectors"];
            int[] domainIndexesToUse = selectorsAndDomains["domains"];
            double[] percentagesToUse = null;
            if (choosingPercentages)
            {
                int[] percentagesChosen = selectorsAndDomains["percentages"];
                percentagesToUse = new double[percentagesChosen.Length];
                for(int i = 0; i < percentagesChosen.Length; i++)
                {
                    percentagesToUse[i] = percentagesChosen[i] / 100.0;
                }
            }

            //string[] collaborationSelectors = { "Diversity", "Achievable_Diversity" };
            string[] nonCollaborationSelectors = { "Random", "Diversity", "Achievable_Diversity" };

            //string[] collaborationDomains = { "elevators08", "logistics00", "rovers" };
            string[] nonCollaborationDomains = { "logistics00" };

            string[] allPossibleDependenciesSelectors = { "Actions_Achiever", "Public_Predicates_Achiever", "New_Actions_Achiever", "New_Public_Predicates_Achiever", "Random"/*, "Actions_Achiever_Without_Negation", "Public_Predicates_Achiever_Without_Negation"*/ };
            string[] allPossibleDependenciesDomains = { "blocksworld", "depot", "driverlog", "elevators08", "logistics00", "rovers", "satellites", "sokoban", "taxi", "wireless", "woodworking08", "zenotravel" };
            //string[] allPossibleDependenciesDomains = { /*"DebuggingExample"*//*"TestingExample"*//*"blocksworld_3_problems"*//*"logistics00"*//*"logistics_3_problems"*//*"Logistics_Test_example"*//*"Logistics_Test_example_simple"*//*"elevators08"*//*"elevators_debugging"*//*"blocksdebug"*//*"blocks_first_problem"*//*"uav"*//*"zenotravel_test_example"*//*"zenotravel_hard_test_example"*//*"rovers_test_example"*//*"rovers_hard_test_example"*//*"MA_Blocks_test"*//*"MA_Blocksworld"*//*"MA_Blocks_easy_test"*//*"MA_Logistics_100"*//*"logistics_with_init_test"*//*"Logistics_first_prob_debug"*//*"logistics_easy"*//*"logistics_problems"*//*"elevators_last_prob"*//*"logistics_10_and_13"*//*"logistics_only_13_0"*//*"logistics_only_14_0"*//*"blocksworld_only_13_1"*//*"logistics_easy_examples"*//*"logistics_with_prepare_airport"*//*"logistics_with_action_appliabale"*//*"zenotravel_only_3"*/"logistics_only_14_0" };

            string[] dependenciesSelectors = new string[selectorIndexesToUse.Length];
            Console.WriteLine("Selectors that we will run:");
            for(int i = 0; i < selectorIndexesToUse.Length; i++)
            {
                dependenciesSelectors[i] = allPossibleDependenciesSelectors[selectorIndexesToUse[i]];
                Console.WriteLine(dependenciesSelectors[i]);
            }

            string[] dependenciesDomains = new string[domainIndexesToUse.Length];
            Console.WriteLine("Domains that we will run the selectors on:");
            for(int i = 0; i < domainIndexesToUse.Length; i++)
            {
                dependenciesDomains[i] = allPossibleDependenciesDomains[domainIndexesToUse[i]];
                Console.WriteLine(dependenciesDomains[i]);
            }

            if (choosingPercentages)
            {
                Console.WriteLine("Percentages that we will run our problems on:");
                for(int i = 0; i < percentagesToUse.Length; i++)
                {
                    Console.WriteLine(percentagesToUse[i]);
                }
            }
            
            Console.WriteLine("Lets start running them :)");

            string experimentPath = baseFolderName + "/Experiment/" + plannerType + "/";

            goldenStandardRootDirectory = baseFolderName + "/hindsight"; //changed it's name to hindsight as it is in the paper...
            System.IO.Directory.CreateDirectory(goldenStandardRootDirectory);

            string collaborationPath = experimentPath + "Collaboration/Order_Of_Agents/";
            string nonCollaborationPath = experimentPath + "No_Collaboration/exp2/";

            string dependenciesNonCollaborativePath = experimentPath + "Dependecies/No_Collaboration/";

            //first run the collaborations:
            //collaborationUsed = true;
            //RunSpecificExperiment(collaborationSelectors, collaborationDomains, collaborationPath, "Collaborative");

            //now run the non collaborations:
            collaborationUsed = false;
            dependencyUsed = true;
            if (choosingPercentages)
            {
                RunSpecificExperimentOnSpecificPercentages(dependenciesSelectors, dependenciesDomains, percentagesToUse, dependenciesNonCollaborativePath, "Non_Collaborative", "Dependencies");
            }
            else
            {
                RunSpecificExperiment(dependenciesSelectors, dependenciesDomains, dependenciesNonCollaborativePath, "Non_Collaborative", "Dependencies", false);
            }
        }

        static void RunRegularExperimentOnAlotOfDomains(Dictionary<string, int[]> selectorsAndDomains, string plannerType)
        {
            int[] selectorIndexesToUse = selectorsAndDomains["selectors"];
            int[] domainIndexesToUse = selectorsAndDomains["domains"];

            string[] allPossibleDependenciesSelectors = { "FF_and_FD", "FD", "FF" };
            //string[] allPossibleDependenciesDomains = { "blocksworld", "depot", "driverlog", "elevators08", "logistics00", "rovers", "satellites", "sokoban", "taxi", "wireless", "woodworking08", "zenotravel" };
            string[] allPossibleDependenciesDomains = { /*"DebuggingExample"*//*"TestingExample"*//*"blocksworld_3_problems"*//*"logistics00"*//*"logistics_3_problems"*//*"Logistics_Test_example"*//*"Logistics_Test_example_simple"*//*"elevators08"*//*"elevators_debugging"*//*"blocksdebug"*//*"blocks_first_problem"*//*"uav"*//*"zenotravel_test_example"*//*"zenotravel_hard_test_example"*//*"rovers_test_example"*//*"rovers_hard_test_example"*//*"MA_Blocks_test"*//*"MA_Blocksworld"*//*"MA_Blocks_easy_test"*//*"MA_Logistics_100"*//*"logistics_with_init_test"*//*"Logistics_first_prob_debug"*//*"logistics_easy"*//*"logistics_problems"*//*"elevators_last_prob"*//*"logistics_only_13_0"*//*"zenotravel_easy_probs"*//*"logistics_with_action_appliabale"*//*"logistics_only_14_0"*/"zenotravel_only_23" };

            string[] dependenciesSelectors = new string[selectorIndexesToUse.Length];
            Console.WriteLine("Selectors that we will run:");
            for (int i = 0; i < selectorIndexesToUse.Length; i++)
            {
                dependenciesSelectors[i] = allPossibleDependenciesSelectors[selectorIndexesToUse[i]];
                Console.WriteLine(dependenciesSelectors[i]);
            }

            string[] dependenciesDomains = new string[domainIndexesToUse.Length];
            Console.WriteLine("Domains that we will run the selectors on:");
            for (int i = 0; i < domainIndexesToUse.Length; i++)
            {
                dependenciesDomains[i] = allPossibleDependenciesDomains[domainIndexesToUse[i]];
                Console.WriteLine(dependenciesDomains[i]);
            }
            Console.WriteLine("Lets start running them :)");

            string experimentPath = baseFolderName + "/Experiment/" + plannerType + "/";

            //goldenStandardRootDirectory = baseFolderName + @"\goldenStandard";
            //System.IO.Directory.CreateDirectory(goldenStandardRootDirectory);

            string dependenciesPath = experimentPath + "Dependecies/";

            //first run the collaborations:
            //collaborationUsed = true;
            //RunSpecificExperiment(collaborationSelectors, collaborationDomains, collaborationPath, "Collaborative");

            //now run the non collaborations:
            collaborationUsed = false;
            dependencyUsed = true;
            RunSpecificExperiment(dependenciesSelectors, dependenciesDomains, dependenciesPath, "Non_Collaborative", "Dependencies", true);
        }

        static void RunSpecificExperiment(string[] selectors, string[] domains, string mainPath, string collaborativeString, string dependencyString, bool regularExperiment)
        {
            string domainsPath = baseFolderName + "/factored/";
            if (runWithDummyInitAction)
            {
                domainsPath += "domains_with_init_action/";
            }
            string resultName = "/experiment_results";
            string outputFileDirectory = "/Experiment_Output_File";
            string outputFileName = "/output.csv";
            string recordingsDirectoryName = "/Recordings";

            string oldPathAndName = "ff.exe";
            

            foreach (string domainName in domains)
            {
                goldenStandardDomainDirectory = goldenStandardRootDirectory + "/" + domainName;
                System.IO.Directory.CreateDirectory(goldenStandardDomainDirectory);
                foreach (string selectorType in selectors)
                {
                    // copy the ff.exe file to be as the domain's name:
                    currentFFProcessName = "ff_" + domainName + "_" + selectorType;
                    string newPathAndName = currentFFProcessName + ".exe";
                    if (!File.Exists(newPathAndName))
                        System.IO.File.Copy(oldPathAndName, newPathAndName);
                    ExternalPlanners.ffPath = newPathAndName;

                    currentFFProcessName = currentFFProcessName.ToLower();

                    // start:

                    Console.WriteLine("*************************************************************");
                    Console.WriteLine("Now using " + dependencyString + " selection");
                    Console.WriteLine("Now using " + collaborativeString + " approaches");
                    Console.WriteLine("Now using selector: " + selectorType);
                    Console.WriteLine("Now running domain: " + domainName);
                    Console.WriteLine("*************************************************************");

                    typeOfSelector = selectorType;

                    string currPath = mainPath + selectorType + "/" + domainName;
                    System.IO.Directory.CreateDirectory(currPath); //create the directory if it does not exist

                    string problemsPath = domainsPath + domainName;

                    string resultsPath = currPath + resultName;
                    System.IO.Directory.CreateDirectory(resultsPath); //create the directory if it does not exist

                    string outputFolder = currPath + outputFileDirectory;
                    System.IO.Directory.CreateDirectory(outputFolder); //create the directory if it does not exist
                    string outputFilePath = outputFolder + outputFileName;

                    string recordingFolder = currPath + recordingsDirectoryName;
                    System.IO.Directory.CreateDirectory(recordingFolder); //create the directory if it does not exist

                    Experiment(problemsPath, resultsPath, recordingFolder, regularExperiment, false, -1);
                    fixExperimentsResults(resultsPath, outputFilePath);
                }
            }
        }

        static void RunSpecificExperimentOnSpecificPercentages(string[] selectors, string[] domains, double[] percentages, string mainPath, string collaborativeString, string dependencyString)
        {
            string domainsPath = baseFolderName + "/factored/";
            if (runWithDummyInitAction)
            {
                domainsPath += "domains_with_init_action/";
            }
            string resultName = "/experiment_results";
            string outputFileDirectory = "/Experiment_Output_File";
            string outputFileName = "/output.csv";
            string recordingsDirectoryName = "/Recordings";

            string oldPathAndName = "ff.exe";

            string plannerName = "";
            if (highLevelPlanerType == HighLevelPlanerType.Projection)
                plannerName = "proj";
            else if (highLevelPlanerType == HighLevelPlanerType.ProjectionMafs)
                plannerName = "mafs";

            foreach (double percentage in percentages)
            {
                foreach (string domainName in domains)
                {
                    goldenStandardDomainDirectory = goldenStandardRootDirectory + "/" + domainName;
                    System.IO.Directory.CreateDirectory(goldenStandardDomainDirectory);
                    foreach (string selectorType in selectors)
                    {
                        // copy the ff.exe file to be as the domain's name:
                        currentFFProcessName = "ff_" + plannerName + "_" + domainName + "_" + selectorType + "_" + percentage;
                        string newPathAndName = currentFFProcessName + ".exe";
                        if (!File.Exists(newPathAndName))
                            System.IO.File.Copy(oldPathAndName, newPathAndName);
                        ExternalPlanners.ffPath = newPathAndName;

                        currentFFProcessName = currentFFProcessName.ToLower();

                        // start:

                        Console.WriteLine("*************************************************************");
                        Console.WriteLine("Now using " + dependencyString + " selection");
                        Console.WriteLine("Now using " + collaborativeString + " approaches");
                        Console.WriteLine("Now using selector: " + selectorType);
                        Console.WriteLine("Now running domain: " + domainName);
                        Console.WriteLine("Now revealing " + percentage + " out of all dependencies");
                        Console.WriteLine("*************************************************************");

                        typeOfSelector = selectorType;

                        string currPath = mainPath + selectorType + "/" + domainName;
                        System.IO.Directory.CreateDirectory(currPath); //create the directory if it does not exist

                        string problemsPath = domainsPath + domainName;

                        string resultsPath = currPath + resultName;
                        System.IO.Directory.CreateDirectory(resultsPath); //create the directory if it does not exist

                        string outputFolder = currPath + outputFileDirectory;
                        System.IO.Directory.CreateDirectory(outputFolder); //create the directory if it does not exist
                        string outputFilePath = outputFolder + outputFileName;

                        string recordingFolder = currPath + recordingsDirectoryName;
                        System.IO.Directory.CreateDirectory(recordingFolder); //create the directory if it does not exist

                        Experiment(problemsPath, resultsPath, recordingFolder, false, true, percentage);
                        //fixExperimentsResults(resultsPath, outputFilePath);
                    }
                }
            }
        }

        static void SummarizeHighLevelPlanWithTheirPublishedEffects(string directoryPath)
        {
            //the directory must contain the files: "AllTogether.csv", and "HighLevelPlan.csv" among other files.
            string outputData = "Action,Effects\n";
            string outputFilename = directoryPath + "/HighLevelPlanWithEffects.csv";

            string planFilename = directoryPath + "/HighLevelPlan.csv";
            string publishedEffectsFilename = directoryPath + "/AllTogether.csv";

            string publishedEffectsText = File.ReadAllText(publishedEffectsFilename);
            string[] effectsLines = publishedEffectsText.Split('\n');
            Dictionary<string, List<string>> actionToEffects = new Dictionary<string, List<string>>();
            for(int i = 1; i < effectsLines.Length - 1; i++)
            {
                string[] split = effectsLines[i].Split(',');
                string action = split[3];
                string effect = split[4];
                List<string> effects;
                if (actionToEffects.ContainsKey(action))
                {
                    effects = actionToEffects[action];
                }
                else
                {
                    effects = new List<string>();
                    actionToEffects.Add(action, effects);
                }
                effects.Add(effect);
            }

            string planFileText = File.ReadAllText(planFilename);
            string[] planLines = planFileText.Split('\n');
            for(int i = 1; i < planLines.Length - 1; i++) //ignore the first line which is a header
            {
                string action = planLines[i].Split(',')[1];
                List<string> effectsPublished;
                if (actionToEffects.ContainsKey(action))
                {
                    effectsPublished = actionToEffects[action];
                }
                else
                {
                    effectsPublished = new List<string>(); //didn't publish any effect for this action...
                }

                outputData += action;
                for(int j = 0; j < effectsPublished.Count; j++)
                {
                    outputData += "," + effectsPublished[j];
                }
                outputData += "\n";
            }

            File.WriteAllText(outputFilename, outputData);
        }

        private static void RunTestsForRotem(Dictionary<string, int[]> selectorsAndDomains)
        {
            RunRegularExperimentOnAlotOfDomains(selectorsAndDomains, "TestsForRotem");
        }

        static void RunManualDebugPlannerOnExperimentProblems(Dictionary<string, int[]> selectorsAndDomains)
        {
            RunExperimentOnAlotOfDomains(selectorsAndDomains, "Manual_Debug_exp", false);
        }

        static void RunProjectionOnlyExperiment(Dictionary<string, int[]> selectorsAndDomains)
        {
            RunExperimentOnAlotOfDomains(selectorsAndDomains, "Projection_Only_journal", false);
        }

        static void RunMAFSProjectionExperiment(Dictionary<string, int[]> selectorsAndDomains)
        {
            selectingDependenciesToUseInTheHueristic = true;
            RunExperimentOnAlotOfDomains(selectorsAndDomains, "MAFS_Projection_journal", false);
        }

        static void RunOptimalDependenciesSolverExperiment(Dictionary<string, int[]> selectorsAndDomains)
        {
            RunRegularExperimentOnAlotOfDomains(selectorsAndDomains, "Optimal_Dependencies_journal_test");
        }

        private static void RunSingleAgentSolverExperiment(Dictionary<string, int[]> selectorsAndDomains)
        {
            RunRegularExperimentOnAlotOfDomains(selectorsAndDomains, "Single_Agent_Solver");
        }

        private static void RunGenerationOfDependenciesGraphs(Dictionary<string, int[]> selectorsAndDomains)
        {
            RunRegularExperimentOnAlotOfDomains(selectorsAndDomains, "Dependencies_Graphs_IJCAI");
        }

        //Run on a specific set of percentages:
        private static void RunProjectionOnlyExperimentOnSpecificPercentage(Dictionary<string, int[]> selectorsDomainsAndPercentages)
        {
            RunExperimentOnAlotOfDomains(selectorsDomainsAndPercentages, "Projection_Only_journal", true);
        }

        private static void RunMAFSProjectionExperimentOnSpecificPercentage(Dictionary<string, int[]> selectorsDomainsAndPercentages)
        {
            selectingDependenciesToUseInTheHueristic = true;
            RunExperimentOnAlotOfDomains(selectorsDomainsAndPercentages, "MAFS_Projection_journal", true);
        }

        static StreamWriter swResults;

        static void Main(string[] args)
        {
            //CreateMABlocksWorld(@"D:\Privacy Preserving\GPPP\GPPP - new format\DOMAINS\factored\newdomainsMABlocksWorld3",
            //  6, 7, 5, 6, 7, 8, 1);
            // CreateMALogistics(@"D:\Privacy Preserving\GPPP\GPPP - new format\DOMAINS\factored\MALogistics3",
            // 10, 12, 10, 13, 10, 12, 1);

            /* if (args.Length == 2)
             {
                 resultFilePath = args[1];
             }*/
            bool runningMyExperiment = false;
            bool runningExpWithChosenPercentages = true;

            bool creatingNewBenchmarks = false;
            bool addDummyInitAction = false;

            runWithDummyInitAction = runningMyExperiment || runningExpWithChosenPercentages; //if I am running Rotem's experiment, it should be using the problem with a dummy init action and not the regular one.

            if (runningMyExperiment)
            {
                Console.WriteLine("Running configuration " + highLevelPlanerType);

                Dictionary<string, int[]> selectorsAndDomains = GetDomainAndSelectorIndexesToUse(args);
                if (highLevelPlanerType == HighLevelPlanerType.TestsForRotem)
                {
                    RunTestsForRotem(selectorsAndDomains);
                }
                else if (highLevelPlanerType == HighLevelPlanerType.ManualDebugPlanner)
                {
                    RunManualDebugPlannerOnExperimentProblems(selectorsAndDomains);
                }
                else if (highLevelPlanerType == HighLevelPlanerType.DependenciesGraphGenerator)
                {
                    RunGenerationOfDependenciesGraphs(selectorsAndDomains);
                }
                else if (highLevelPlanerType == HighLevelPlanerType.SingleAgentPlanner)
                {
                    RunSingleAgentSolverExperiment(selectorsAndDomains);
                }
                else if (highLevelPlanerType == HighLevelPlanerType.OptimalDependenciesPlanner)
                {
                    RunOptimalDependenciesSolverExperiment(selectorsAndDomains);
                }
                else if (highLevelPlanerType == HighLevelPlanerType.ProjectionMafs)
                {
                    RunMAFSProjectionExperiment(selectorsAndDomains);
                }
                else // if (highLevelPlanerType == HighLevelPlanerType.Projection)
                {
                    RunProjectionOnlyExperiment(selectorsAndDomains);

                    /*
                    Dictionary<string, int[]> selectorsAndDomains = GetDomainAndSelectorIndexesToUse(args);
                    //Dictionary<string, string> first = GetFirstSolvedPercentageForEachProblem(@"C:\Users\User\Desktop\second_degree\code\GPPP(last_v)\Experiment\results_paper\Actions_Achiever\blocksworld\Experiment_Output_File\output.csv");
                    RunAndCreateTracesForeachProblemsMinAndMaxSolved(selectorsAndDomains);
                    */
                    /*
                    //SummarizeHighLevelPlanWithTheirPublishedEffects(@"C:\Users\User\Desktop\second_degree\code\GPPP(last_v)\Experiment\Projection_Only\Dependecies\No_Collaboration\Random\logistics00\Recordings\percentage_1\probLOGISTICS-10-0\Round_0");
                    Console.WriteLine("*****************************************************************************");
                    Console.WriteLine("*****************************************************************************");
                    Console.WriteLine("Done");
                    Console.WriteLine("Max amount of dependencies to reveal is: " + AdvancedProjectionDependeciesPublisher.maxAmountOfDependenciesToReveal);
                    Console.WriteLine("Min amount of dependencies to reveal is: " + AdvancedProjectionDependeciesPublisher.minAmountOfDependenciesToReveal);
                    Console.WriteLine("*****************************************************************************");
                    Console.WriteLine("*****************************************************************************");
                    Console.WriteLine("Press any key to finish the program...");
                    Console.ReadLine();
                    */
                    /*
                    string blocksPath = @"C:\Users\User\Desktop\second_degree\code\GPPP(last_v)\factored\new_domain_blocks";
                    CreateMABlocksWorld(blocksPath, 2, 3, 2, 3, 2, 3, 1);
                    */
                }
            }
            else if (runningExpWithChosenPercentages)
            {
                Dictionary<string, int[]> selectorsDomainsAndPercentages = GetDomainAndSelectorIndexesAndPercentagesToUse(args);
                Console.WriteLine("Running configuration " + highLevelPlanerType);

                if (highLevelPlanerType == HighLevelPlanerType.ProjectionMafs)
                {
                    RunMAFSProjectionExperimentOnSpecificPercentage(selectorsDomainsAndPercentages);
                }
                else // if (highLevelPlanerType == HighLevelPlanerType.Projection)
                {
                    RunProjectionOnlyExperimentOnSpecificPercentage(selectorsDomainsAndPercentages);
                }
            }
            else if (creatingNewBenchmarks)
            {
                //string savePath = baseFolderName + @"\factored\MA_Logistics";
                string savePath = baseFolderName + "/factored/MA_Blocksworld";

                //CreateMALogistics(savePath, 3, 7, 2, 5, 5, 25, 5);
                //CreateMABlocksWorld(savePath, 3, 7, 2, 5, 5, 25, 5);
                CreateMABlocksWorld(savePath, 6, 7, 5, 6, 7, 8, 1);
            }
            else if (addDummyInitAction)
            {
                //string[] allPossibleDependenciesDomains = { "blocksworld", "depot", "driverlog", "elevators08", "logistics00", "rovers", "satellites", "sokoban", "taxi", "wireless", "woodworking08", "zenotravel" };
                string[] allPossibleDependenciesDomains = { }; // Already added dummy init action to all domains :)
                AddADummyInitActionToDomains(allPossibleDependenciesDomains);
            }
            else
            {
                if (args.Length == 0)
                {
                    swResults = new StreamWriter("Results.txt", false);
                    swResults.Close();

                    //string sPath = @"C:\Users\Samsung\Dropbox\privacyPreserving\Competition\all\factored\depot";
                    string sPath = @"D:\Privacy Preserving\GPPP\GPPP - new format\DOMAINS\factored\newdomainsMABlocksWorld2\MABlocksWorld2-4-5-8";
                    // RunUsingProcesses(new DirectoryInfo(sPath), "Plan.txt");
                    ParseAll(new DirectoryInfo(sPath), "Plan.txt");
                }
                else if (args.Length == 1)
                {
                    domainFolderPath = args[0];
                    //outputPath = Directory.GetCurrentDirectory();
                    ParseAll(new DirectoryInfo(args[0]), outputPath);
                }
                else if (args.Length == 2)
                {
                    if (args[1][args[1].Length - 1] == '\'')
                        args[1] = args[1].Remove(args[1].Length - 1);
                    outputPath = args[1];
                    ParseAll(new DirectoryInfo(args[0]), args[1]);
                }
                else
                {
                    List<string> lDomainFiles = new List<string>();
                    List<string> lProblemFiles = new List<string>();
                    for (int i = 0; i < args.Length - 1; i += 2)
                    {
                        lDomainFiles.Add(args[i]);
                        lProblemFiles.Add(args[1]);
                    }
                    try
                    {
                        List<Domain> lDomains = new List<Domain>();
                        List<Problem> lProblems = new List<Problem>();
                        ReadAgentFiles(lDomainFiles, lProblemFiles, lDomains, lProblems);
                        List<Agent> agents = null;
                        List<string> lPlan = SolveFactored(lDomains, lProblems, ref agents, null);
                        if (lPlan != null)
                        {
                            WritePlanToFile(lPlan, args[args.Length - 1] + "/Plan.txt");

                            Console.WriteLine();

                        }
                        WriteResults("?", " success");
                    }
                    catch (Exception e)
                    {
                        WriteResults("?", " fail " + e.Message + ", " + e.StackTrace);
                    }

                }
            }

            //Console.WriteLine("Press any key to end the program...");
            //Console.ReadKey();
            Console.WriteLine("Done :)");
        }

        private static void AddADummyInitActionToDomains(string[] domains)
        {
            Console.WriteLine("Adding dummy init action to all the following domains:");
            foreach(string domain in domains)
            {
                Console.WriteLine(domain);
            }
            Console.WriteLine("*********************************************************");
            Console.WriteLine("Starting now");
            string sourcePath = baseFolderName + "/factored";
            string destPath = baseFolderName + "/factored/domains_with_init_action";
            foreach(string domain in domains)
            {
                Console.WriteLine("*********************************************************");
                Console.WriteLine("Now adding dummy init action to the domain: " + domain);
                string domainSourcePath = sourcePath + "/" + domain;
                string domainDestPath = destPath + "/" + domain;
                string[] problems = Directory.GetDirectories(domainSourcePath);
                foreach(string problemPath in problems)
                {
                    string problem = problemPath.Remove(0, domainSourcePath.Length + 1); //get only the name of the last subdirectory. Remove the \ too
                    Console.WriteLine("Problem: " + problem);
                    string problemSourcePath = domainSourcePath + "/" + problem;
                    string problemDestPath = domainDestPath + "/" + problem;
                    PddlAddDummyInitAction.AddDummyInitAction(problemSourcePath, problemDestPath);
                }
            }
            //string sourceFolderPath = baseFolderName + @"\factored\Logistics_first_prob_debug\probLOGISTICS-4-0";
            //string destFolderPath = baseFolderName + @"\factored\Logistics_first_prob_debug_with_init\probLOGISTICS-4-0";
            

            Console.WriteLine("*********************************************************");
            Console.WriteLine("Done!");
        }

        private static void RunAndCreateTracesForeachProblemsMinAndMaxSolved(Dictionary<string, int[]> selectorsAndDomains)
        {
            int[] selectorIndexesToUse = selectorsAndDomains["selectors"];
            int[] domainIndexesToUse = selectorsAndDomains["domains"];

            string[] allPossibleDependenciesSelectors = { "Actions_Achiever", "Public_Predicates_Achiever", "New_Actions_Achiever", "New_Public_Predicates_Achiever"/*, "Random", "Actions_Achiever_Without_Negation", "Public_Predicates_Achiever_Without_Negation"*/ };
            string[] allPossibleDependenciesDomains = { "blocksworld", "depot", "driverlog", "elevators08", "logistics00", "rovers", "satellites", "sokoban", "taxi", "wireless", "woodworking08", "zenotravel" };
            string[] dependenciesSelectors = new string[selectorIndexesToUse.Length];
            Console.WriteLine("Selectors that we will examine:");
            for (int i = 0; i < selectorIndexesToUse.Length; i++)
            {
                dependenciesSelectors[i] = allPossibleDependenciesSelectors[selectorIndexesToUse[i]];
                Console.WriteLine(dependenciesSelectors[i]);
            }

            string[] dependenciesDomains = new string[domainIndexesToUse.Length];
            Console.WriteLine("Domains that we will examine the selectors on:");
            for (int i = 0; i < domainIndexesToUse.Length; i++)
            {
                dependenciesDomains[i] = allPossibleDependenciesDomains[domainIndexesToUse[i]];
                Console.WriteLine(dependenciesDomains[i]);
            }
            Console.WriteLine("Lets start examining them :)");

            CreateTracesForSelected(dependenciesSelectors, dependenciesDomains);
        }

        private static void CreateTracesForSelected(string[] dependenciesSelectors, string[] dependenciesDomains)
        {
            string rootPath = @"C:\Users\User\Desktop\second_degree\code\GPPP(last_v)\Experiment\results_paper";
            string problemsRootPath = @"C:\Users\User\Desktop\second_degree\code\GPPP(last_v)\factored";
            dependencyUsed = true;
            currentFFProcessName = "ff";
            foreach (string selector in dependenciesSelectors)
            {
                typeOfSelector = selector;
                string selectorFolder = rootPath + @"\" + selector;
                foreach(string domain in dependenciesDomains)
                {
                    Console.WriteLine("**********************************************************");
                    Console.WriteLine("Running selector " + selector);
                    Console.WriteLine("Running domain " + domain);

                    string problemsInCurrentDomainFolder = problemsRootPath + @"\" + domain;
                    string domainsFolder = selectorFolder + @"\" + domain;
                    string resultFile = domainsFolder + @"\Experiment_Output_File\output.csv";
                    Dictionary<string, string> problemToFirstSolvedPercentage = GetFirstSolvedPercentageForEachProblem(resultFile);

                    string recordingFolder = domainsFolder + @"\Recordings";
                    foreach(string problem in problemToFirstSolvedPercentage.Keys)
                    {
                        string percentage = problemToFirstSolvedPercentage[problem];
                        Console.WriteLine("Running problem " + problem + " on percentage " + percentage);
                        string usableProblemName = GetUsableProblemName(problem);
                        string currentProblemMainFolder = recordingFolder + @"\percentage_" + percentage + @"\" + usableProblemName + @"\Round_0";
                        string planFile = currentProblemMainFolder + @"\HighLevelPlan.csv";
                        List<string> highLevelPlan = ReadHighLevelPlanFromFile(planFile);
                        string tracesFolder = currentProblemMainFolder + @"\traces";
                        double percentageToUse = TranslatePercentageToDouble(percentage);
                        string problemFolderToParse = problemsInCurrentDomainFolder + @"\" + usableProblemName;
                        CreateTracesForSpecificProblem(problemFolderToParse, percentageToUse, tracesFolder, highLevelPlan);

                        Console.WriteLine("Finished problem " + problem + " on percentage " + percentage);
                    }
                }
            }
            Console.WriteLine("Finished all!");
        }

        private static void CreateTracesForSpecificProblem(string problemFolderToParse, double percentageToUse, string tracesFolder, List<string> highLevelPlan)
        {
            tracesFolderForSavingTraces = tracesFolder;
            highLevelPlanForTraces = highLevelPlan;
            currPercentageForSelectingActionInAdvancedProjectionPlaner = percentageToUse;
            creatingTracesAfterSolutionWasFound = true;
            ParseAll(new DirectoryInfo(problemFolderToParse), null);
        }

        private static double TranslatePercentageToDouble(string percentage)
        {
            List<double> percentages = new List<double>();
            for (double i = 0; i <= 1; i += 0.05)
            {
                percentages.Add(i);
            }
            if (!percentages.Contains(1))
            {
                percentages.Add(1);
            }
            for(int i = 0; i < percentages.Count; i++)
            {
                string curr = percentages[i].ToString();
                if (curr.Equals(percentage))
                {
                    return percentages[i];
                }
            }
            //should not reach here...
            throw new Exception("No percentage match");
        }

        private static List<string> ReadHighLevelPlanFromFile(string planFile)
        {
            List<string> highLevelPlan = new List<string>();
            using (StreamReader sr = new StreamReader(planFile))
            {
                string currentLine;
                // currentLine will be null when the StreamReader reaches the end of file
                bool firstLine = true;
                while ((currentLine = sr.ReadLine()) != null)
                {
                    if (firstLine)
                    {
                        firstLine = false;
                        continue;
                    }
                    string[] split = currentLine.Split(',');
                    highLevelPlan.Add(split[1]); //split[1] is the current action in the plan
                }
            }
            return highLevelPlan;
        }

        private static string GetUsableProblemName(string problem)
        {
            string usableName = problem.Split('\\')[1];
            return usableName;
        }

        private static Dictionary<string, string> GetFirstSolvedPercentageForEachProblem(string resultFile)
        {
            Dictionary<string, string> problemToFirstSolvedPercentage = new Dictionary<string, string>();
            using (StreamReader sr = new StreamReader(resultFile))
            {
                string currentLine;
                // currentLine will be null when the StreamReader reaches the end of file
                bool firstLine = true;
                while ((currentLine = sr.ReadLine()) != null)
                {
                    if (firstLine)
                    {
                        firstLine = false;
                        continue;
                    }
                    string[] split = currentLine.Split(',');
                    if (split[2].Equals("  success"))
                    {
                        string probName = split[1];
                        if (!problemToFirstSolvedPercentage.ContainsKey(probName))
                        {
                            string percentage = split[0];
                            problemToFirstSolvedPercentage.Add(probName, percentage);
                        }
                    }
                }
            }
            return problemToFirstSolvedPercentage;
        }

        private static Dictionary<string, int[]> GetDomainAndSelectorIndexesToUse(string[] args)
        { 
            for(int i = 0; i < args.Length; i++)
            {
                Console.WriteLine("Args[" + i + "] = '" + args[i] + "'");
            }
            int seperatorIndex = -1;
            for(int i = 0; i < args.Length; i++)
            {
                if (args[i].Equals("d"))
                {
                    seperatorIndex = i;
                    break;
                }
            }

            int[] selectors = new int[seperatorIndex];
            int[] domains = new int[args.Length - seperatorIndex - 1];

            Console.WriteLine("Selectors are:");
            for(int i = 0; i < seperatorIndex; i++)
            {
                selectors[i] = int.Parse(args[i]);
                Console.WriteLine(selectors[i]);
                if (selectors[i] < 0 || selectors[i] > 4)
                    throw new Exception("The selectors indexes must be between [0, 4]");
            }

            Console.WriteLine("Domains are:");
            for (int i = 0; i < domains.Length; i++)
            {
                domains[i] = int.Parse(args[i + seperatorIndex + 1]);
                Console.WriteLine(domains[i]);
                if (domains[i] < 0 || domains[i] > 11)
                    throw new Exception("The domains indexes must be between [0, 11]");
            }

            Dictionary<string, int[]> selectorsAndDomains = new Dictionary<string, int[]>();
            selectorsAndDomains.Add("selectors", selectors);
            selectorsAndDomains.Add("domains", domains);
            Console.WriteLine("Now Running those selectors on the domains indexes by order");
            return selectorsAndDomains;
            
            /*
            Dictionary<string, int[]> dict = new Dictionary<string, int[]>();
            //dict.Add("selectors", new int[] { 0, 1, 2, 3 });
            dict.Add("selectors", new int[] { 0 });
            //dict.Add("domains", new int[] { 0,1,2,3,4,5,6,7,8,9,10,11 });
            dict.Add("domains", new int[] {0});
            return dict;
            */
        }

        private static Dictionary<string, int[]> GetDomainAndSelectorIndexesAndPercentagesToUse(string[] args)
        {
            for (int i = 0; i < args.Length; i++)
            {
                Console.WriteLine("Args[" + i + "] = '" + args[i] + "'");
            }
            int selectorsSepIndex = -1;
            int domainsSepIndex = -1;
            int percentagesSepIndex = -1;
            for (int i = 0; i < args.Length; i++)
            {
                if (args[i].Equals("s"))
                {
                    selectorsSepIndex = i;
                }
                else if (args[i].Equals("d"))
                {
                    domainsSepIndex = i;
                }
                else if (args[i].Equals("p"))
                {
                    percentagesSepIndex = i;
                }
            }

            int plannerChoice = int.Parse(args[0]);
            int[] selectors = new int[domainsSepIndex - selectorsSepIndex - 1];
            int[] domains = new int[percentagesSepIndex - domainsSepIndex - 1];
            int[] percentages = new int[args.Length - percentagesSepIndex - 1];

            Console.WriteLine("Chosen planner number " + plannerChoice);
            ChoosePlanner(plannerChoice);

            Console.WriteLine("Selectors are:");
            for (int i = 0; i < selectors.Length; i++)
            {
                selectors[i] = int.Parse(args[i + selectorsSepIndex + 1]);
                Console.WriteLine(selectors[i]);
                if (selectors[i] < 0 || selectors[i] > 4)
                    throw new Exception("The selectors indexes must be between [0, 4]");
            }

            Console.WriteLine("Domains are:");
            for (int i = 0; i < domains.Length; i++)
            {
                domains[i] = int.Parse(args[i + domainsSepIndex + 1]);
                Console.WriteLine(domains[i]);
                if (domains[i] < 0 || domains[i] > 11)
                    throw new Exception("The domains indexes must be between [0, 11]");
            }

            Console.WriteLine("Percentages are:");
            for (int i = 0; i < percentages.Length; i++)
            {
                percentages[i] = int.Parse(args[i + percentagesSepIndex + 1]);
                Console.WriteLine(percentages[i]);
                if (percentages[i] < 0 || percentages[i] > 100)
                    throw new Exception("The percentages must in the integer range of [0, 100]");
            }

            Dictionary<string, int[]> selectorsDomainsAndPercentages = new Dictionary<string, int[]>();
            selectorsDomainsAndPercentages.Add("selectors", selectors);
            selectorsDomainsAndPercentages.Add("domains", domains);
            selectorsDomainsAndPercentages.Add("percentages", percentages);
            Console.WriteLine("Now Running those selectors on the domains indexes for the given percentages by order");

            return selectorsDomainsAndPercentages;

            /*
            Dictionary<string, int[]> dict = new Dictionary<string, int[]>();
            //dict.Add("selectors", new int[] { 0, 1, 2, 3 });
            dict.Add("selectors", new int[] { 0 });
            //dict.Add("domains", new int[] { 0,1,2,3,4,5,6,7,8,9,10,11 });
            dict.Add("domains", new int[] {0});
            return dict;
            */
        }

        private static void ChoosePlanner(int plannerChoice)
        {
            if(plannerChoice == 0)
            {
                Console.WriteLine("The chosen planner is the Joint Projection planner");
                highLevelPlanerType = HighLevelPlanerType.Projection;
            }
            else if(plannerChoice == 1)
            {
                Console.WriteLine("The chosen planner is the MAFS planner");
                highLevelPlanerType = HighLevelPlanerType.ProjectionMafs;
            }
            else
            {
                throw new ArgumentException("The chosen planner must be 0 or 1 at this point");
            }
        }
    }
}
