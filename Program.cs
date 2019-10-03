using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Diagnostics;
using System.Threading;


namespace Planning
{
    class Program
    {
        // public static StreamWriter timeResults = new StreamWriter("timeResults.txt", false);
        public static bool supportPrivateGoal = true;
        public static bool thereIsPrivateGoal = false;
        public static string outputPath = Directory.GetCurrentDirectory() + @"\Results3\";
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
        public enum HighLevelPlanerType { PDB, Landmark, Projection, ForwardHsp, BackwardHsp, LandmarkAndHsp, WeightedLandmarkAndHsp, SophisticatedProjection, MafsLandmark, Mafsff, MafsWithProjectionLandmarks, PDBMafs, ProjectionMafs, DistrebutedProjectionMafs };
        //static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.ProjectionMafs; //Use the projection as a Heuristic for MAFS.
        static public HighLevelPlanerType highLevelPlanerType = HighLevelPlanerType.Projection; //Use the projection as a solver by it's own. Try to solve a high level plan and then extend it to private plans.
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

        public static string baseFolderName = @"C:\Users\User\Desktop\second_degree\code\GPPP(last_v)"; //My computer path. Change this to your computer path
        //public static string baseFolderName = @"C:\Users\levlerot\Desktop\GPPP(last_v)"; //Server's path

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
                pdbPath = @"PdbFiles/" + dir.Parent.Name;
                if (!Directory.Exists(pdbPath))
                {
                    Directory.CreateDirectory(pdbPath);
                }
                pdbPath += "/" + dir.Name + ".pdb";
                List<Agent> agents = null;
                List<string> lPlan = SolveFactored(lDomains, lProblems, ref agents, dJoint);
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


        public static string GetWantedName(string path)
        {
            string[] split = path.Split('\\');
            string ans = "";
            for(int i = split.Length - 1; i >= split.Length - 2; i--)
            {
                string temp = split[i];
                if(i != split.Length - 1)
                    temp += "\\" + ans;
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
            foreach (Agent agent in agents)
            {
                // agent.ReducePublicActions(allPublicPredicate);
            }
            List<string> lPlan = null;

            if (highLevelPlanerType == HighLevelPlanerType.Projection)
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

                foreach(Agent a in agents)
                {
                    string currentAgentFile = agentsRecordingFolder + @"\" + ConvertAgentNameToItsUsableName(a) + ".csv";
                    recordingDependencyPickingPerAgent.Add(a, currentAgentFile);
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

                                                        StartGrounding = DateTime.Now;

                                                        lPlan = Planner.PreferablePlan();

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
                    string sOutputName = Domain.MapGroundedActionNamesToOutputNames[lPlan[i]];
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

                //create recording folder:
                string currentRecordingFolder = recordingFolderWithPercentage + @"\" + di.Name + @"\Round_" + currentParsingRound;
                System.IO.Directory.CreateDirectory(currentRecordingFolder); //create the directory if it does not exist
                recordingDependencyPickingAllTogether = currentRecordingFolder + @"\AllTogether.csv";
                recordingHighLevelPlanFileName = currentRecordingFolder + @"\HighLevelPlan.csv";

                agentsRecordingFolder = currentRecordingFolder + @"\Agents";
                System.IO.Directory.CreateDirectory(agentsRecordingFolder); //create the directory if it does not exist
                recordingDependencyPickingPerAgent = new Dictionary<Agent, string>();

                sOutputPlanFile = currentRecordingFolder + @"\Plan.txt";

                /* previous...
                if (sOutputPlanFile == "")
                    sOutputPlanFile = "Plan.txt";
                else
                {
                    sOutputPlanFile += @"\Plan.txt";
                }
                */

                Vertex.agents = new List<Agent>();
                Vertex.ffLplan = new List<string>();
                Vertex.map = new Dictionary<string, int>();
                Vertex.forwardSearch = null;
                Vertex.hsp = null;

                GC.Collect();


                //ReadAgentFiles(di, sOutputPlanFile);

                Thread t = new Thread(() => ReadAgentFiles(di, sOutputPlanFile));

                t.Name = "ReadAgentFiles " + di.Name;
                t.Start();
                if (t.Join(10 * 60 * 1000))
                {
                }
                else
                {
                    t.Abort();
                    // Program.timeResults.WriteLine("*");
                    //Program.timeResults.Flush();
                    Thread.Sleep(1000);
                    //writing an empty plan file
                    StreamWriter sw = new StreamWriter(sOutputPlanFile + "plan.txt");
                    sw.Close();
                    WriteResults(GetWantedName(di.FullName), " failed - timeout");
                }

                KillPlanners();
                // List<Process> lPlanningProcesses = GetPlanningProcesses();
                //KillAll(lPlanningProcesses);
            }
        }
        public static List<Process> GetPlanningProcesses()
        {
            List<Process> l = new List<Process>();
            foreach (Process p in Process.GetProcesses())
            {
                if (p.ProcessName.ToLower().Contains("downward") || p.ProcessName.ToLower().Contains("ff"))
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
            swResults = new StreamWriter(outputPath + @"/Results.txt", true);
            swResults.WriteLine(sDomain + ", " + sMsg.Replace(",", ":") + ", " + PlanCost + ", " + PlanMakeSpan
               + "," + makeSpanPlanTime
               + "," + (End.Subtract(Start).TotalSeconds - pdbCreationTime)
                 //+ "," + (StartGrounding.Subtract(StartHighLevelPlanning)).TotalSeconds
                 //  + "," + (StartGrounding - StartHighLevelPlanning).TotalSeconds
                 //     + "," + (End.Subtract(StartGrounding).TotalSeconds)
                 + "," + sendedStateCounter
                 + "," + StateExpendCounter
                 + "," + MapsPlanner.generateCounter
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

        static void Experiment(string folderPath, string resultsFolderPath, string recordingFolderPath)
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

            for (int j = percentages.Count - 1; j >= 0; j--)
            {
                double percentage = percentages[j];
                outputPath = resultsFolderPath + @"/percentage_" + percentage;
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

                recordingFolderWithPercentage = recordingFolderPath + @"\percentage_" + percentage;
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
                for (int i = 0; i < 15; i++)
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
                string header = "Percentage of actions selected, folder name, success/failure, plan cost, plan make span, ? makespan plan time ?, total time, ? senderstate counter ?, ? state expend counter ?, ? generate counter ?";
                outFile.WriteLine(header);
                foreach (string dir in directories)
                {
                    string[] split = dir.Split('\\');
                    string percentage = split[split.Length - 1].Split('_')[1];

                    string line;
                    System.IO.StreamReader file = new System.IO.StreamReader(dir + @"/Results.txt");
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

        static void RunExperimentOnAlotOfDomains()
        {
            //string[] collaborationSelectors = { "Diversity", "Achievable_Diversity" };
            string[] nonCollaborationSelectors = { "Random", "Diversity", "Achievable_Diversity" };

            //string[] collaborationDomains = { "elevators08", "logistics00", "rovers" };
            string[] nonCollaborationDomains = { "logistics00" };

            string[] dependenciesSelectors = {"Actions_Achiever", "Public_Predicates_Achiever", "Random"};
            string[] dependenciesDomains = { "elevators08" };

            string experimentPath = baseFolderName + @"\Experiment\Projection_Only\";

            string collaborationPath = experimentPath + @"Collaboration\Order_Of_Agents\";
            string nonCollaborationPath = experimentPath + @"No_Collaboration\exp2\";

            string dependenciesNonCollaborativePath = experimentPath + @"Dependecies\No_Collaboration\";

            //first run the collaborations:
            //collaborationUsed = true;
            //RunSpecificExperiment(collaborationSelectors, collaborationDomains, collaborationPath, "Collaborative");

            //now run the non collaborations:
            collaborationUsed = false;
            dependencyUsed = true;
            RunSpecificExperiment(dependenciesSelectors, dependenciesDomains, dependenciesNonCollaborativePath, "Non_Collaborative", "Dependencies");
        }

        static void RunSpecificExperiment(string[] selectors, string[] domains, string mainPath, string collaborativeString, string dependencyString)
        {
            string domainsPath = baseFolderName + @"\factored\";
            string resultName = @"\experiment_results";
            string outputFileDirectory = @"\Experiment_Output_File";
            string outputFileName = @"\output.csv";
            string recordingsDirectoryName = @"\Recordings";

            foreach (string domainName in domains)
            { 
                foreach (string selectorType in selectors)
                {
                    Console.WriteLine("*************************************************************");
                    Console.WriteLine("Now using " + dependencyString + " selection");
                    Console.WriteLine("Now using " + collaborativeString + " approaches");
                    Console.WriteLine("Now using selector: " + selectorType);
                    Console.WriteLine("Now running domain: " + domainName);
                    Console.WriteLine("*************************************************************");

                    typeOfSelector = selectorType;

                    string currPath = mainPath + selectorType + @"\" + domainName;
                    System.IO.Directory.CreateDirectory(currPath); //create the directory if it does not exist

                    string problemsPath = domainsPath + domainName;

                    string resultsPath = currPath + resultName;
                    System.IO.Directory.CreateDirectory(resultsPath); //create the directory if it does not exist

                    string outputFolder = currPath + outputFileDirectory;
                    System.IO.Directory.CreateDirectory(outputFolder); //create the directory if it does not exist
                    string outputFilePath = outputFolder + outputFileName;

                    string recordingFolder = currPath + recordingsDirectoryName;
                    System.IO.Directory.CreateDirectory(recordingFolder); //create the directory if it does not exist

                    Experiment(problemsPath, resultsPath, recordingFolder);
                    fixExperimentsResults(resultsPath, outputFilePath);
                }
            }
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
            Console.WriteLine("Running configuration " + highLevelPlanerType);
            bool runningMyExperiment = true;
            if (runningMyExperiment)
            {
                RunExperimentOnAlotOfDomains();
            }
            else
            {
                if (args.Length == 0)
                {
                    swResults = new StreamWriter(@"Results.txt", false);
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


        }


    }
}
