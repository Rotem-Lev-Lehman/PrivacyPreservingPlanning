using System;
using System.Collections.Generic;
using System.IO;
using System.Threading;
using Planning.AdvandcedProjectionActionSelection.PrivacyLeakageCalculation;
using Newtonsoft.Json;

namespace Planning
{
    class AdvancedLandmarkProjectionPlaner
    {
        public static bool threadContinueSearchFlag = true;
        public static Mutex mutex = new Mutex();
        public static Mutex mutex2 = new Mutex();
        public List<bool> threadAns = null;
        HashSet<GroundedPredicate> allKindOfpublicPreconditions = null;
        public List<string> lplan;
        public Dictionary<string, int> map = null;
        public Dictionary<string, Action> mapActionNameToAction = null;
        public List<Agent> agents = null;
        public List<string> highLevelplan;
        public enum GroundingType { MultiThreading, MinimalLocalsPlan, RegularGrounding, ActionGrounding, RegularPrivateGrounding };
        GroundingType groundingType = GroundingType.RegularPrivateGrounding;
        public List<string> ffLplan = null;
        State globalInitialState = null;
        private AAdvancedProjectionActionPublisher publisher;
        private string recordingHighLevelPlanFilename;
        public static Dictionary<Agent, bool> firstTimeWritenStates;

        public static Dictionary<Agent, Dictionary<Predicate, List<Action>>> actionsAffectedForAgent;

        public AdvancedLandmarkProjectionPlaner(AAdvancedProjectionActionPublisher publisher, string recordingHighLevelPlanFilename)
        {
            //in order to use the regular Advanced Projection Planner, that does not select actions, use the no collaboration publisher, with AdvancedProjectionAllActionsSelector, does not matter what you put in the percentageToSelected.
            this.publisher = publisher;
            this.recordingHighLevelPlanFilename = recordingHighLevelPlanFilename;
        }

        public List<string> Plan(List<Agent> m_agents, List<Domain> lDomains, List<Problem> lProblems, Domain joinDomain)
        {
            Program.countOfProjAction = 0;
            Program.countOfProjFact = 0;
            Program.sizeOfRegressionTree = 0;
            Program.maxSizeOfRegressionTree = 0;
            Program.maxDepthOfRegressionTree = 0;
            DateTime startTime = DateTime.Now;

            globalInitialState = new State((Problem)(null));
            Program.StartHighLevelPlanning = DateTime.Now;
            agents = m_agents;
            map = new Dictionary<string, int>();
            int j = 0;
            foreach (Agent agent in agents)
            {
                map.Add(agent.name, j);
                j++;
                foreach (GroundedPredicate gp in agent.startState.m_lPredicates)
                {
                    globalInitialState.AddPredicate(gp);
                }
            }
            List<Action> allProjectionAction = new List<Action>();
            HashSet<Landmark> lGoal = new HashSet<Landmark>();
            int index = 0;
            Distributed_Landmarks_Detection.Reset(agents);
            List<Predicate> predicates = new List<Predicate>();
            Domain dPublic = new Domain("PublicDomain", "");
            Problem pPublic = new Problem("PublicProblem", dPublic);
            State publicStartState = new State(pPublic);
            GroundedPredicate newPrePredicate = null;
            newPrePredicate = new GroundedPredicate(Domain.ARTIFICIAL_PREDICATE + "StartState");
            publicStartState.AddPredicate(newPrePredicate);
            predicates.Add(newPrePredicate);

            mapActionNameToAction = new Dictionary<string, Action>();
            allKindOfpublicPreconditions = new HashSet<GroundedPredicate>(); ;

            HashSet<GroundedPredicate> allPreFroTest = new HashSet<GroundedPredicate>();
            HashSet<Action> allActionToTest = new HashSet<Action>();

            HashSet<GroundedPredicate> allprivatePreFroTest = new HashSet<GroundedPredicate>();
            HashSet<Action> allprivateActionToTest = new HashSet<Action>();

            Dictionary<Agent, List<Action>> agentsProjections = new Dictionary<Agent, List<Action>>();
            //Measuring the time for the dependencies generation:
            List<DateTime> dependenciesProjectionStartTimes = new List<DateTime>();
            List<DateTime> dependenciesProjectionEndTimes = new List<DateTime>();

            foreach (Agent agent in agents)
            {
                foreach (GroundedPredicate gp in agent.Predicates)
                {
                    allPreFroTest.Add(gp);
                }
                foreach (Action accc in agent.m_actions)
                {
                    allActionToTest.Add(accc);

                }
                foreach (GroundedPredicate gp in agent.Predicates)
                {
                    if (!agent.PublicPredicates.Contains(gp))
                        allprivatePreFroTest.Add(gp);
                }
                foreach (Action accc in agent.privateActions)
                {
                    allprivateActionToTest.Add(accc);
                }
                agent.initLandmarksDetect();
                foreach (GroundedPredicate goalGp in agent.goal)
                {
                    allKindOfpublicPreconditions.Add(goalGp);
                }
                foreach (Action act in agent.publicActions)
                {
                    foreach (GroundedPredicate preGp in act.Preconditions.GetAllPredicates())
                    {
                        allKindOfpublicPreconditions.Add(preGp);
                    }
                    if (!mapActionNameToAction.ContainsKey(act.Name))
                        mapActionNameToAction.Add(act.Name, act);
                }

                //this returns all of the projections, we will need to take only some of them and look at how does it affect the solution
                DateTime startDependenciesGeneration = DateTime.Now;
                dependenciesProjectionStartTimes.Add(startDependenciesGeneration);

                List<Action> currentlProjAction = agent.getAdvancedProjectionPublicAction(index, predicates);

                DateTime endDependenciesGeneration = DateTime.Now;
                dependenciesProjectionEndTimes.Add(endDependenciesGeneration);
                //Save the dependencies for later usage:
                agentsProjections.Add(agent, currentlProjAction);

                foreach (Action act in currentlProjAction)
                {
                    act.agent = agent.name;
                }

                foreach (Predicate pred in agent.PublicPredicates)
                {
                    predicates.Add(pred);
                }

                foreach (GroundedPredicate pgp in agent.GetPublicStartState())
                {
                    publicStartState.AddPredicate(pgp);
                }
                index += 1000;
                lGoal.UnionWith(agent.GetPublicGoals());
            }

            Program.SaveTimeMeasurmentsForCreatingDependencies(dependenciesProjectionStartTimes, dependenciesProjectionEndTimes);

            /*
            LeakageTrace.setAgents(agents);
            Dictionary<Agent, LeakageTrace> traces = new Dictionary<Agent, LeakageTrace>();
            List<Action> publicActionsForTraces = new List<Action>();
            foreach(Agent agent in agents)
            {
                LeakageTrace trace = new LeakageTrace(agent);
                traces.Add(agent, trace);
                publicActionsForTraces.AddRange(agentsProjections[agent]);
            }
            firstTimeWritenStates = new Dictionary<Agent, bool>();
            foreach (Agent agent in agents)
            {
                traces[agent].initializeOperators(publicActionsForTraces, agent.privateActions);
                writeFirstHalfOfJsonToFile(agent, traces[agent]);
                firstTimeWritenStates.Add(agent, true);
            }
            
            */
            //clear the actions affected dictionary:
            actionsAffectedForAgent = new Dictionary<Agent, Dictionary<Predicate, List<Action>>>();

            //publish all of the chosen projections, by the chosen policy:
            Console.WriteLine("Choosing which dependencies to publish");
            publisher.setAgents(agents);
            //publisher.setTraces(traces);

            DateTime dependenciesSelectionStartTime = DateTime.Now;
            publisher.publishActions(allProjectionAction, agentsProjections);
            DateTime dependenciesSelectionEndTime = DateTime.Now;

            Program.SaveTimeMeasurmentForSelectingDependencies(dependenciesSelectionStartTime, dependenciesSelectionEndTime);

            /*
            if (Program.creatingTracesAfterSolutionWasFound)
            {
                //write the traces with the dependencies that were published to the file
                foreach (Agent agent in agents)
                {
                    //get the high level plan from the program...
                    traces[agent].plan = Program.highLevelPlanForTraces;
                    writeStatesToFile(agent, traces[agent]); //write the leftovers
                    writeSecondHalfOfJsonToFile(agent, traces[agent]);
                    //WriteTraceToFile(agent, traces[agent]);
                }
                return null;
            }
            */
            Console.WriteLine("Published dependencies, now trying to find a high level plan");

            dPublic.Actions = allProjectionAction;
            foreach (Domain d in lDomains)
            {
                foreach (ParametrizedPredicate pp in d.Predicates)
                    dPublic.Predicates.Add(pp);
                foreach (string sType in d.Types)
                    if (!dPublic.Types.Contains(sType))
                        dPublic.Types.Add(sType);
                foreach (KeyValuePair<string, string> pair in d.TypeHierarchy)
                    dPublic.TypeHierarchy[pair.Key] = pair.Value;
                foreach (Constant c in d.Constants)
                    dPublic.Constants.Add(c);
            }
            foreach (Predicate p in predicates)
            {
                if (p.Name.StartsWith(Domain.ARTIFICIAL_PREDICATE))
                {
                    ParametrizedPredicate pp = new ParametrizedPredicate(p.Name);
                    dPublic.Predicates.Add(pp);
                }

            }

            foreach (Predicate pInit in publicStartState.Predicates)
                pPublic.AddKnown(pInit);

            CompoundFormula goalf = new CompoundFormula("and");
            foreach (Landmark l in lGoal)
            {
                CompoundFormula disjGoal = new CompoundFormula("or");
                foreach (GroundedPredicate gp in l.facts.Keys)
                {
                    disjGoal.AddOperand(gp);
                }
                goalf.AddOperand(disjGoal);
            }
            pPublic.Goal = goalf;

            bool ans;
            ExternalPlanners externalPlanners = new ExternalPlanners();
            highLevelplan = externalPlanners.Plan(true, false, dPublic, pPublic, publicStartState, goalf, dPublic.Actions, 10 * 60000, out ans);

            if (highLevelplan == null)
            {
                /*
                //if we don't have a high level plan, write the trace to the file without the high level plan...
                foreach(Agent agent in agents)
                {
                    WriteTraceToFile(agent, traces[agent]);
                }
                */
                return null;
            }

            //high level plan was successfully found
            WriteHighLevelPlanToFile(highLevelplan);

            string fault;
            List<string> finalPlan = null;
            Program.StartGrounding = DateTime.Now;
            bool success = false;

            if (groundingType == GroundingType.MultiThreading)
            {
                finalPlan = this.GetGroundPlan(joinDomain);
            }
            if (groundingType == GroundingType.MinimalLocalsPlan)
            {
                RegTasksDistributionGrounding(out finalPlan, out fault);
            }
            if (groundingType == GroundingType.RegularGrounding)
            {
                RegGrounding(out finalPlan, out fault);
            }
            if (groundingType == GroundingType.RegularPrivateGrounding)
            {
                success = RegGroundingByPrivate(out finalPlan, out fault);
            }
            if (groundingType == GroundingType.ActionGrounding)
            {
                GroundingActions(out finalPlan, out fault);
            }

            if (!success)
            {
                finalPlan = new List<string>();
                finalPlan.Add(null);
            }
            else
            {
                //if we have a valid plan, write the *high level* plan to the trace and only then write the trace to a file:
                /*
                if (!Program.alreadySolved[Program.currentProblemName])
                {
                    Program.alreadySolved[Program.currentProblemName] = true;
                    foreach (Agent agent in agents)
                    {
                        traces[agent].plan = highLevelplan;
                        WriteTraceToFile(agent, traces[agent]);
                    }
                }
                */
                //calculate amount of dependencies used:
                //Program.amountOfDependenciesUsed = CalculateAmountOfDependenciesUsedAndSaveGoldenStandardTrace(highLevelplan, allProjectionAction, agents, traces, true);
                Program.amountOfDependenciesUsed = CalculateAmountOfDependenciesUsedAndSaveGoldenStandardTrace(highLevelplan, allProjectionAction, agents, null, false);

            }

            return finalPlan;

            return null;
        }

        public static void writeStatesToFile(Agent agent, LeakageTrace leakageTrace)
        {
            string content = JsonConvert.SerializeObject(leakageTrace);
            int startOfStatesIndex = content.IndexOf("\"states\"") + 10;
            int endOfStatesIndex = content.IndexOf("\"plan\"") - 2;
            string substring = content.Substring(startOfStatesIndex, endOfStatesIndex - startOfStatesIndex);
            if (firstTimeWritenStates[agent])
            {
                firstTimeWritenStates[agent] = false;
            }
            else if (substring.Length > 0)
            {
                substring = "," + substring;
            }
            WriteToTraceFile(agent, substring, false);
        }

        public static void writeSecondHalfOfJsonToFile(Agent agent, LeakageTrace leakageTrace)
        {
            string content = JsonConvert.SerializeObject(leakageTrace);
            int endOfStatesIndex = content.IndexOf("\"plan\"");
            string substring = content.Substring(endOfStatesIndex - 2);
            WriteToTraceFile(agent, substring, false);
        }

        public static void writeFirstHalfOfJsonToFile(Agent agent, LeakageTrace leakageTrace)
        {
            string content = JsonConvert.SerializeObject(leakageTrace);
            int statesIndex = content.IndexOf("\"states\"");
            string substring = content.Substring(0, statesIndex + 10); //until ..."states":[
            WriteToTraceFile(agent, substring, true);
        }

        private static void WriteToTraceFile(Agent agent, string substring, bool createNewFile)
        {
            string path = Program.tracesFolder + @"\agent" + agent.getID() + ".json";

            if (createNewFile)
            {
                File.WriteAllText(path, substring);
            }
            else
            {
                File.AppendAllText(path, substring);
            }
        }

        private void WriteTraceToFile(Agent agent, LeakageTrace leakageTrace)
        {
            string filename = Program.tracesFolder + @"\agent" + agent.getID() + ".json";
            string content = JsonConvert.SerializeObject(leakageTrace);
            File.WriteAllText(filename, content);
        }

        public static int CalculateAmountOfDependenciesUsedAndSaveGoldenStandardTrace(List<string> highLevelplan, List<Action> allProjectionAction, List<Agent> agents, Dictionary<Agent, LeakageTrace> traces, bool saveTracesForGoldenStandard)
        {
            Dictionary<string, int> amount = new Dictionary<string, int>();
            HashSet<Predicate> effectsTold = new HashSet<Predicate>();
            HashSet<Predicate> effectsActive = new HashSet<Predicate>();
            Dictionary<Predicate, string> whoToldThis = new Dictionary<Predicate, string>();
            List<Tuple<string, Action, Predicate>> agentActionPredicate = new List<Tuple<string, Action, Predicate>>();
            Dictionary<Predicate, Action> whichActionThisBelongsTo = new Dictionary<Predicate, Action>();

            foreach(Agent agent in agents)
            {
                amount[agent.name] = 0;
            }

            foreach(string act in highLevelplan)
            {
                bool found = false;
                foreach(Action action in allProjectionAction)
                {
                    if (action.Name.Equals(act))
                    {
                        found = true;
                        //check how many effects have made this action possible
                        List<Predicate> removeList = new List<Predicate>();
                        foreach(Predicate p in effectsTold)
                        {
                            if (action.HashPrecondition.Contains(p))
                            {
                                amount[whoToldThis[p]]++;
                                agentActionPredicate.Add(new Tuple<string, Action, Predicate>(whoToldThis[p], whichActionThisBelongsTo[p], p));
                                removeList.Add(p);
                            }
                        }
                        foreach(Predicate p in removeList)
                        {
                            effectsTold.Remove(p);
                        }
                        //tell this action's effects:
                        foreach(Predicate p in action.HashEffects)
                        {
                            if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE)) //private effect
                            {
                                insertToEffectsSet(effectsActive, effectsTold, whoToldThis, p, action.agent, whichActionThisBelongsTo, action);
                            }
                        }
                    }
                }
                if (!found)
                {
                    throw new Exception("The action in the plan is not an action...");
                }
            }

            
            int maxPublished = -1;
            foreach(Agent agent in agents)
            {
                if(amount[agent.name] > maxPublished)
                {
                    maxPublished = amount[agent.name];
                }
            }
            //return maxPublished;
            /*
            double maxPublished = -1;
            foreach(Agent agent in agents)
            {
                double currPercentage = RoundToPercentage((double)amount[agent.name] / (double)agent.amountOfDependenciesThatICanShare);
                if(currPercentage > maxPublished)
                {
                    maxPublished = currPercentage;
                }
            }
            */
            int currGoldenStandard = GetCurrGoldenStandard();
            if (currGoldenStandard == -1 || maxPublished < currGoldenStandard)
            {
                //we have a new golden standard!
                currGoldenStandard = maxPublished;
                if (saveTracesForGoldenStandard)
                {
                    CreateTracesAndSaveGoldenStandard(traces, agentActionPredicate, currGoldenStandard, agents);
                }

                //anyways, replace the golden standard even if you do not save it's made-up traces...
                ReplaceGoldenStandardFile(currGoldenStandard);
            }

            return maxPublished;
        }

        private static void CreateTracesAndSaveGoldenStandard(Dictionary<Agent, LeakageTrace> traces, List<Tuple<string, Action, Predicate>> agentActionPredicate, int goldenStandard, List<Agent> agents)
        {

            Dictionary<int, LeakageTrace> goldenTraces = new Dictionary<int, LeakageTrace>();
            foreach (Agent agent in traces.Keys)
            {
                goldenTraces.Add(agent.getID(), LeakageTrace.CopyTraceWithoutStates(traces[agent]));
            }
            foreach (Tuple<string, Action, Predicate> tuple in agentActionPredicate)
            {
                GenerateStates(goldenTraces, tuple, agents);
            }
            string tracesFolder = Program.goldenStandardCurrentDirectory + @"\traces";
            DeleteGoldenTraceFolder(tracesFolder);
            System.IO.Directory.CreateDirectory(tracesFolder); //create the directory if it does not exist
            foreach (int agent in goldenTraces.Keys)
            {
                WriteGoldenTraceToFile(agent, goldenTraces[agent], tracesFolder);
            }
        }

        private static void DeleteGoldenTraceFolder(string tracesFolder)
        {
            if (Directory.Exists(tracesFolder))
            {
                DirectoryInfo dir = new DirectoryInfo(tracesFolder);
                dir.Delete(true);
            }
        }

        private static void ReplaceGoldenStandardFile(int goldenStandard)
        {
            DirectoryInfo d = new DirectoryInfo(Program.goldenStandardCurrentDirectory);
            FileInfo[] Files = d.GetFiles("*.txt"); //Getting Text files
            foreach (FileInfo file in Files)
            {
                //delete all these files - deletes only one...
                if (File.Exists(file.FullName))
                {
                    File.Delete(file.FullName);
                }
            }

            string filename = Program.goldenStandardCurrentDirectory + @"\" + goldenStandard + ".txt";
            File.Create(filename).Dispose();
        }

        private static void WriteGoldenTraceToFile(int agent, LeakageTrace leakageTrace, string tracesFolder)
        {
            string filename = tracesFolder + @"\agent" + agent + ".json";
            string content = JsonConvert.SerializeObject(leakageTrace);
            File.WriteAllText(filename, content);
        }

        private static void GenerateStates(Dictionary<int, LeakageTrace> goldenTraces, Tuple<string, Action, Predicate> tuple, List<Agent> agents)
        {
            Predicate revealed = tuple.Item3;
            int agentID = Agent.getID(tuple.Item1);
            foreach(Agent agent in actionsAffectedForAgent.Keys)
            {
                if(agent.getID() == agentID)
                {
                    List<Action> affected = actionsAffectedForAgent[agent][revealed];
                    EnterDependenciesToTrace(agent, new Tuple<Action, Predicate>(tuple.Item2, revealed), affected, goldenTraces, agents);
                    break;
                }
            }
        }


        public static void EnterDependenciesToTrace(Agent agent, Tuple<Action, Predicate> chosen, List<Action> actionsAffected, Dictionary<int, LeakageTrace> traces, List<Agent> agents)
        {
            if (actionsAffected.Count == 0)
                return;
            Predicate predicate;
            bool negation = false;
            int val = 0;
            if (chosen.Item2.Negation)
            {
                //if it is a "not Predicate"
                predicate = chosen.Item2.Negate();
                negation = true;
                val = 1;
            }
            else
            {
                predicate = chosen.Item2;
            }
            Predicate privatePredicate = agent.ArtificialToPrivate[(GroundedPredicate)predicate];

            Dictionary<Predicate, int> publicEffectsOfChosen = getPublicEffects(chosen.Item1.HashEffects);
            int recievedStateID = TraceState.GetNextStateID();

            TraceState recievedState = getRevealerRecievedState(agent, privatePredicate, val, publicEffectsOfChosen, recievedStateID, agents);

            List<TraceState> sentStates = getRevealerSentStates(agent, actionsAffected, val, recievedStateID, agents);

            traces[agent.getID()].AddStates(recievedState, sentStates);

            CopyTraceStatesForAllAgents(agents, agent, recievedState, sentStates, val, traces);

        }

        private static void CopyTraceStatesForAllAgents(List<Agent> agents, Agent agent, TraceState recievedState, List<TraceState> sentStates, int val, Dictionary<int, LeakageTrace> traces)
        {
            bool found = false;
            foreach (Agent other in agents)
            {
                if (other.Equals(agent))
                {
                    found = true;
                    continue;
                }

                bool imTheSender = recievedState.senderID == other.getID();

                TraceState rec = AlterState(recievedState, other, true, imTheSender, val, traces);

                List<TraceState> traceStates = new List<TraceState>();
                foreach (TraceState state in sentStates)
                {
                    TraceState temp = AlterState(state, other, false, imTheSender, val, traces);
                    traceStates.Add(temp);
                }

                traces[other.getID()].AddStates(rec, traceStates);
            }
            if (!found)
                throw new Exception("Agent not found");
        }

        private static TraceState AlterState(TraceState state, Agent other, bool first, bool imTheSender, int val, Dictionary<int, LeakageTrace> traces)
        {
            string context = "received";
            int iParentID = -1;
            if (imTheSender)
            {
                if (first)
                {
                    context = "sending";
                }
                else
                {
                    iParentID = state.parentID;
                }
            }

            List<int> vals = AlterVals(state.values, other, val, traces);

            TraceState altered = new TraceState(other.getID(), state.senderID, state.stateID, state.parentID, iParentID, state.cost, state.heuristic, state.privateIDs, vals, context);

            return altered;
        }

        private static List<int> AlterVals(List<int> values, Agent other, int val, Dictionary<int, LeakageTrace> traces)
        {
            int privateVal = 1;
            if (val == 1)
                privateVal = 0;

            List<int> altered = new List<int>();

            int amountOfPublicVariables = LeakageTrace.GetAmountOfPublicVariables();
            for (int i = 0; i < amountOfPublicVariables; i++)
            {
                altered.Add(values[i]);
            }
            int totalAmountOfVariables = traces[other.getID()].variables.Count;

            int amountOfPrivateVariables = totalAmountOfVariables - amountOfPublicVariables;
            for (int i = 0; i < amountOfPrivateVariables; i++)
            {
                altered.Add(privateVal);
            }

            return altered;
        }

        private static TraceState getRevealerRecievedState(Agent agent, Predicate predicateBeforeNegation, int val, Dictionary<Predicate, int> publicEffectsOfChosen, int stateID, List<Agent> agents)
        {
            List<int> receivedStateVals = GetVals(predicateBeforeNegation, agent, val, publicEffectsOfChosen);
            Agent sender = LeakageTrace.getNextAgentAndMoveToTheNextInLine(agent);
            int otherAgentID = sender.getID();
            int parentID = -1;
            int iparentID = -1;
            int cost = 1;
            int heuristic = 1;
            List<int> privateIDs = GetIDs(stateID, agents, agent, 0);
            string receivedContext = "received";
            TraceState receivedState = new TraceState(agent.getID(), otherAgentID, stateID, parentID, iparentID, cost, heuristic, privateIDs, receivedStateVals, receivedContext);

            return receivedState;
        }

        private static List<TraceState> getRevealerSentStates(Agent agent, List<Action> actionsAffected, int val, int recievedStateID, List<Agent> agents)
        {
            int diff = 1;
            List<TraceState> sentStates = new List<TraceState>();
            foreach (Action action in actionsAffected)
            {
                Dictionary<Predicate, int> publicEffectsOfAffected = getPublicEffects(action.HashEffects);
                List<int> sentStateVals = GetVals(null, agent, val, publicEffectsOfAffected);
                int sentSenderID = agent.getID();
                int sentStateID = TraceState.GetNextStateID();
                int sentParentID = recievedStateID;
                int sentIParentID = -1;
                int sentCost = 1;
                int sentHeuristic = 1;
                List<int> sentPrivateIDs = GetIDs(recievedStateID, agents, agent, diff);
                string sentContext = "sending";
                TraceState sentState = new TraceState(agent.getID(), sentSenderID, sentStateID, sentParentID, sentIParentID, sentCost, sentHeuristic, sentPrivateIDs, sentStateVals, sentContext);

                sentStates.Add(sentState);

                diff++;
            }

            return sentStates;
        }

        private static Dictionary<Predicate, int> getPublicEffects(List<Predicate> hashEffects)
        {
            Dictionary<Predicate, int> publicEffects = new Dictionary<Predicate, int>();
            foreach (Predicate p in hashEffects)
            {
                if (!p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                {
                    //public effect
                    Predicate curr = p;
                    int val = 0;
                    if (p.Negation)
                    {
                        curr = p.Negate();
                        val = 1;
                    }
                    publicEffects.Add(p, val);
                }
            }
            return publicEffects;
        }

        private static List<int> GetIDs(int stateID, List<Agent> agents, Agent agent, int diff)
        {
            List<int> IDs = new List<int>();
            bool found = false;
            foreach (Agent other in agents)
            {
                if (other.Equals(agent))
                {
                    IDs.Add(stateID + 1 + diff);
                    found = true;
                }
                else
                {
                    IDs.Add(stateID + 1);
                }
            }
            if (!found)
                throw new Exception("Agent not found");

            return IDs;
        }

        private static List<int> GetVals(Predicate predicate, Agent agent, int value, Dictionary<Predicate, int> publicEffects)
        {
            int oppositeVal = 1;
            if (value == 1)
                oppositeVal = 0;

            List<int> vals = new List<int>();
            Dictionary<Predicate, TraceVariable> agentsVars = TraceVariable.GetVariablesDict(agent.getID());
            bool found = false;
            if (predicate == null)
                found = true;
            foreach (Predicate p in agentsVars.Keys)
            {
                if (predicate != null && p.Equals(predicate))
                {
                    vals.Add(value);
                    found = true;
                }
                else
                {
                    if (publicEffects.ContainsKey(p))
                    {
                        vals.Add(publicEffects[p]);
                    }
                    else
                    {
                        vals.Add(oppositeVal); //opposite -- dont care about them
                    }
                }
            }
            if (!found)
                throw new Exception("Variable not found");

            return vals;
        }


        private static int GetCurrGoldenStandard()
        {
            DirectoryInfo d = new DirectoryInfo(Program.goldenStandardCurrentDirectory);
            FileInfo[] Files = d.GetFiles("*.txt"); //Getting Text files
            int goldenStandard = -1;
            foreach (FileInfo file in Files)
            {
                string name = file.Name.Split('.')[0];
                goldenStandard = int.Parse(name);
            }
            return goldenStandard;
        }

        private double RoundToPercentage(double percentage)
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

            foreach(double per in percentages)
            {
                if (percentage <= per)
                {
                    return per;
                }
            }
            return 0;
        }

        private static void insertToEffectsSet(HashSet<Predicate> effectsActive, HashSet<Predicate> effectsTold, Dictionary<Predicate, string> whoToldThis, Predicate p, string agent, Dictionary<Predicate, Action> whichActionThisBelongsTo, Action action)
        {
            Predicate negation = p.Negate();
            if (effectsActive.Contains(negation))
            {
                effectsActive.Remove(negation);
                effectsTold.Remove(negation);
                if (effectsActive.Contains(p) || effectsTold.Contains(p))
                {
                    //not possible
                    throw new Exception("Can't contain both negation and regular predicate...");
                }
                effectsActive.Add(p);
                effectsTold.Add(p);
                whoToldThis[p] = agent;
                whichActionThisBelongsTo[p] = action;
            }
            else if (!effectsActive.Contains(p))
            {
                effectsActive.Add(p);
                effectsTold.Add(p);
                whoToldThis[p] = agent;
                whichActionThisBelongsTo[p] = action;
            }
        }

        private void WriteHighLevelPlanToFile(List<string> highLevelplan)
        {
            string data = "Index,Action\n"; //header
            int i = 0;
            foreach(string action in highLevelplan) //add the actions to the total data...
            {
                data += i + "," + action + "\n";
                i++;

            }
            File.WriteAllText(recordingHighLevelPlanFilename, data); //write to the high level plan file
        }

        public List<string> ManualSolve(Domain d, Problem p, State s, Formula goal)
        {
            bool isGoal = false;
            Dictionary<string, Action> mapActionTOIndex = null;
            List<string> lplan = new List<string>();
            while (!isGoal)
            {
                int i = 0;
                mapActionTOIndex = new Dictionary<string, Action>();
                foreach (Action action in d.Actions)
                {
                    if (s.CanDo(action))
                    {
                        mapActionTOIndex.Add(i.ToString(), action);
                        i++;
                    }
                }
                Console.WriteLine("Choose Action:");
                foreach (var item in mapActionTOIndex)
                {
                    Console.WriteLine(item.Key + " - " + item.Value.Name);
                }
                string number = Console.ReadLine();
                Action act = mapActionTOIndex[number];
                lplan.Add(act.Name);
                s = s.Apply(act);
                if (s.ConsistentWith(goal))
                    isGoal = true;
            }
            return lplan;
        }
        private List<string> GeneratePlan(State sBeforeLast, Action aLast, Dictionary<State, State> dParents, Dictionary<State, Action> dMapStateToGeneratingAction)
        {
            List<string> lPlan = new List<string>();
            State sCurrent = sBeforeLast;
            lPlan.Add(aLast.Name);
            while (dParents[sCurrent] != null)
            {
                Action a = dMapStateToGeneratingAction[sCurrent];
                lPlan.Add(a.Name);
                sCurrent = dParents[sCurrent];
            }
            lPlan.Reverse();
            return lPlan;
        }



        public bool Grounding(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (string actname in highLevelplan)
            {
                Action act = mapActionNameToAction[actname];
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                    {
                        if (allKindOfpublicPreconditions.Contains(gp))
                        {
                            effect.AddOperand(gp);
                            flag = true;
                        }

                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);

                /* HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                 foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                 {
                     if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                     {
                         foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                             mutex.Add(mgp);
                     }
                 }
                
                 foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                 {
                     if (agentState[agentName].m_lPredicates.Contains(publicPos))
                     {
                         if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                             goalFormula.AddOperand(publicPos);
                     }
                 }*/

                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                ffLplan = externalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);

                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string act in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }

                }
                else
                {
                    Program.KillPlanners();
                    return RegGrounding(out finalPlan, out fault);
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                /*  HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                  foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                  {
                      if (a.MutuallyExclusive.ContainsKey(gp))
                      {
                          foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                              mutex.Add(mgp);
                      }
                  }
                  foreach (GroundedPredicate publicPos in a.PublicPredicates)
                  {
                      if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                          agentGoal[a.name].AddOperand(publicPos);
                  }*/
            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {
                        Program.KillPlanners();
                        return RegGrounding(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return RegGrounding(out finalPlan, out fault);
                }
            }

            return true;


        }
        public bool RegGrounding(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (string actname in highLevelplan)
            {
                Action act = mapActionNameToAction[actname];
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                    {
                        effect.AddOperand(gp);
                        flag = true;
                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);

                /* HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                 foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                 {
                     if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                     {
                         foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                             mutex.Add(mgp);
                     }
                 }
                
                 foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                 {
                     if (agentState[agentName].m_lPredicates.Contains(publicPos))
                     {
                         if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                             goalFormula.AddOperand(publicPos);
                     }
                 }
                  * */
                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                ffLplan = externalPlanners.Plan(true, false, agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);

                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string act in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }

                }
                else
                {
                    Program.KillPlanners();
                    return GroundingActions(out finalPlan, out fault);
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                /*  HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                  foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                  {
                      if (a.MutuallyExclusive.ContainsKey(gp))
                      {
                          foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                              mutex.Add(mgp);
                      }
                  }
                  foreach (GroundedPredicate publicPos in a.PublicPredicates)
                  {
                      if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                          agentGoal[a.name].AddOperand(publicPos);
                  }*/
            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.Plan(true, true, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);

                    //ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {
                        Program.KillPlanners();
                        return GroundingActions(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return GroundingActions(out finalPlan, out fault);
                }
            }

            return true;

        }
        public bool RegGroundingByPrivate(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (string actname in highLevelplan)
            {
                Action act = mapActionNameToAction[actname];
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                    {
                        effect.AddOperand(gp);
                        flag = true;
                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            int counter = 0;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);

                /* HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                 foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                 {
                     if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                     {
                         foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                             mutex.Add(mgp);
                     }
                 }
                
                 foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                 {
                     if (agentState[agentName].m_lPredicates.Contains(publicPos))
                     {
                         if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                             goalFormula.AddOperand(publicPos);
                     }
                 }
                  * */
                counter++;
                List<Action> privateAndMore = new List<Action>(agents[map[agentName]].privateActions);
                foreach (Action pubAct in agents[map[agentName]].publicActions)
                {
                    bool con = true;
                    foreach (GroundedPredicate gp in eff.Value.GetAllPredicates())
                        if (!pubAct.HashEffects.Contains(gp))
                            con = false;
                    if (con)
                        privateAndMore.Add(pubAct);
                }
                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                ffLplan = externalPlanners.Plan(true, false, agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, privateAndMore, 5 * 60 * 1000, out bUnsolvable);

                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string act in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }

                }
                else
                {
                    Program.KillPlanners();
                    return RegGrounding(out finalPlan, out fault);
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                /*  HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                  foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                  {
                      if (a.MutuallyExclusive.ContainsKey(gp))
                      {
                          foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                              mutex.Add(mgp);
                      }
                  }
                  foreach (GroundedPredicate publicPos in a.PublicPredicates)
                  {
                      if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                          agentGoal[a.name].AddOperand(publicPos);
                  }*/
            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.Plan(true, false, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);

                    //ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {
                        Program.KillPlanners();
                        return GroundingActions(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return RegGrounding(out finalPlan, out fault);
                }
            }

            return true;


        }
        public bool TasksDistributionGrounding(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            Program.StartGrounding = DateTime.Now;

            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (string actname in highLevelplan)
            {
                Action act = mapActionNameToAction[actname];
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                    {
                        if (allKindOfpublicPreconditions.Contains(gp))
                        {
                            effect.AddOperand(gp);
                            flag = true;
                        }
                        /* else
                         {
                             Console.Write("*");
                         }*/

                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            int iStep = 0;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                iStep++;
                // Console.Write("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b" + iStep + "/" + lplan.Count);
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);

                /*HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                {
                    if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                    {
                        foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                            mutex.Add(mgp);
                    }
                }
                
                foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                {
                    if (agentState[agentName].m_lPredicates.Contains(publicPos))
                    {
                        if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                            goalFormula.AddOperand(publicPos);
                    }
                }
                 * */
                bool bUnsolvable = false;
                List<List<string>> localPlans = new List<List<string>>();
                foreach (Agent agent in agents)
                {
                    agentName = agent.name;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);

                    localPlans.Add(ffLplan);

                }
                //ffLplan = ExternalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);
                int min = 10000;

                for (int i = 0; i < agents.Count; i++)
                {
                    if (localPlans[i] != null && localPlans[i].Count < min)
                    {
                        min = localPlans[i].Count;
                        ffLplan = localPlans[i];
                        agentName = agents[i].name;
                    }
                }
                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string act in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }

                }
                else
                {
                    Program.KillPlanners();
                    return RegTasksDistributionGrounding(out finalPlan, out fault);
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                /*  HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                  foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                  {
                      if (a.MutuallyExclusive.ContainsKey(gp))
                      {
                          foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                              mutex.Add(mgp);
                      }
                  }
                  foreach (GroundedPredicate publicPos in a.PublicPredicates)
                  {
                      if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                          agentGoal[a.name].AddOperand(publicPos);
                  }*/
            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {

                        Program.KillPlanners();
                        return RegTasksDistributionGrounding(out finalPlan, out fault);
                        //return planToGoalIIII(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return RegTasksDistributionGrounding(out finalPlan, out fault);
                }
            }

            return true;


        }
        public bool RegTasksDistributionGrounding(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            Program.StartGrounding = DateTime.Now;

            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
            foreach (string actname in highLevelplan)
            {
                Action act = mapActionNameToAction[actname];
                CompoundFormula effect = new CompoundFormula("and");
                bool flag = false;
                foreach (GroundedPredicate gp in act.HashEffects)
                {
                    if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                    {
                        //if (allKindOfpublicPreconditions.Contains(gp))
                        {
                            effect.AddOperand(gp);
                            flag = true;
                        }

                    }
                }
                if (flag)
                    lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            int iStep = 0;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                iStep++;
                // Console.Write("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b" + iStep + "/" + lplan.Count);
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);

                /*HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                foreach (GroundedPredicate gp in goalFormula.GetAllPredicates())
                {
                    if (agents[map[agentName]].MutuallyExclusive.ContainsKey(gp))
                    {
                        foreach (GroundedPredicate mgp in agents[map[agentName]].MutuallyExclusive[gp])
                            mutex.Add(mgp);
                    }
                }
                
                foreach (GroundedPredicate publicPos in agents[map[agentName]].PublicPredicates)
                {
                    if (agentState[agentName].m_lPredicates.Contains(publicPos))
                    {
                        if (!mutex.Contains(publicPos) && !goalFormula.GetAllPredicates().Contains(publicPos.Negate()))
                            goalFormula.AddOperand(publicPos);
                    }
                }
                 * */
                bool bUnsolvable = false;
                List<List<string>> localPlans = new List<List<string>>();
                foreach (Agent agent in agents)
                {
                    agentName = agent.name;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);

                    localPlans.Add(ffLplan);

                }
                //ffLplan = ExternalPlanners.FFPlan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);
                int min = 10000;

                for (int i = 0; i < agents.Count; i++)
                {
                    if (localPlans[i] != null && localPlans[i].Count < min)
                    {
                        min = localPlans[i].Count;
                        ffLplan = localPlans[i];
                        agentName = agents[i].name;
                    }
                }
                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string act in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(act);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {

                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act], a.Predicates);
                            }
                        }
                    }

                }
                else
                {
                    Program.KillPlanners();
                    return Grounding(out finalPlan, out fault);
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                /*  HashSet<GroundedPredicate> mutex = new HashSet<GroundedPredicate>();
                  foreach (GroundedPredicate gp in agentGoal[a.name].GetAllPredicates())
                  {
                      if (a.MutuallyExclusive.ContainsKey(gp))
                      {
                          foreach (GroundedPredicate mgp in a.MutuallyExclusive[gp])
                              mutex.Add(mgp);
                      }
                  }
                  foreach (GroundedPredicate publicPos in a.PublicPredicates)
                  {
                      if (agentState[a.name].m_lPredicates.Contains(publicPos) && !mutex.Contains(publicPos))
                          agentGoal[a.name].AddOperand(publicPos);
                  }*/
            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {

                        Program.KillPlanners();
                        return Grounding(out finalPlan, out fault);
                        //return planToGoalIIII(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return Grounding(out finalPlan, out fault);
                }
            }

            return true;


        }
        public bool GroundingActions(out List<string> finalPlan, out string fault)
        {
            Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            List<Action> lplan = new List<Action>();
            foreach (string actname in highLevelplan)
            {
                Action act = mapActionNameToAction[actname];
                lplan.Add(act);
            }
            int count = 0;
            finalPlan = new List<string>();
            fault = "";
            int level = 0;

            Dictionary<string, State> agentState = new Dictionary<string, State>();
            foreach (Agent a in agents)
            {
                agentState.Add(a.name, new State(a.startState));
            }
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            foreach (Action act in lplan)
            {
                agentName = act.agent;
                goalFormula = new CompoundFormula("and");
                foreach (GroundedPredicate gp in act.Preconditions.GetAllPredicates())
                {
                    goalFormula.AddOperand(gp);
                }
                //goalFormula = new CompoundFormula((CompoundFormula)act.Preconditions);

                bool bUnsolvable = false;
                ExternalPlanners externalPlanners = new ExternalPlanners();
                ffLplan = externalPlanners.Plan(true, false, agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions, 5 * 60 * 1000, out bUnsolvable);

                //List<string> todo = Plan(d, p, agentState[agentName], goalFormula, agents[map[agentName]].m_actions);
                //planTheard = new Thread(() => FF_Plan(agents[map[agentName]].domain, agents[map[agentName]].problem, agentState[agentName], goalFormula, agents[map[agentName]].m_actions));
                //List<string> todo = Plan(d, p, agentState[agentName], localGoal, agents[map[agentName]].m_actions);
                //planTheard.Start();
                //planTheard.Join(3000);
                //planTheard.Abort();
                if (ffLplan != null)
                {
                    List<string> todo = ffLplan;
                    foreach (string localAct in todo)
                    {
                        State s = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[localAct]);
                        if (s == null)
                            throw new Exception();
                        agentState[agentName] = s;
                        finalPlan.Add(localAct);
                        foreach (Agent a in agents)
                        {
                            if (!a.name.Equals(agentName))
                            {
                                agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[localAct], a.Predicates);
                            }
                        }
                    }
                    State state = agentState[agentName].ApplyII(agents[map[agentName]].domain.mapActionNameToAction[act.Name]);
                    if (state == null)
                    {
                        return false;
                    }
                    agentState[agentName] = state;
                    finalPlan.Add(act.Name);
                    foreach (Agent a in agents)
                    {
                        if (!a.name.Equals(agentName))
                        {

                            agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agentName]].domain.mapActionNameToAction[act.Name], a.Predicates);
                        }
                    }
                }
                else
                {
                    Program.KillPlanners();
                    return false;
                }


            }
            Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

            foreach (Agent a in agents)
            {
                agentGoal.Add(a.name, new CompoundFormula("and"));
                foreach (GroundedPredicate goalPredicate in a.goal)
                {
                    bool sat = false;
                    /* foreach (var state in agentState.Values)
                     {
                         if (state.m_lPredicates.Contains(goalPredicate))
                         {
                             sat = true;
                             break;
                         }
                     }*/
                    if (true)//!sat)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }

            }
            foreach (var agent in agents)
            {
                if (agentGoal[agent.name].Operands.Count > 0)
                {
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name]);
                    // hsp = new HSPHeuristic(agent.m_actions, agentGoal[agent.name].GetAllPredicates().ToList(), admisabiliy);
                    //  forwardSearch = new ForwardSearchPlanner(agent.m_actions, hsp);
                    // List<Action> todo = forwardSearch.Plan(agentState[agent.name], agentGoal[agent.name].GetAllPredicates().ToList());
                    //List<string> todo = Plan(d, p, agentState[agent.name], agentGoal[agent.name], agent.m_actions);
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.Plan(true, true, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);

                    //  ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {

                        List<string> todo = ffLplan;

                        foreach (string act in todo)
                        {
                            agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                            finalPlan.Add(act);
                            foreach (Agent a in agents)
                            {
                                if (!a.name.Equals(agent.name))
                                {

                                    agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                }
                            }
                        }
                    }
                    else
                    {
                        Program.KillPlanners();
                        return false;
                        //return planToGoalIIII(out finalPlan, out fault);

                    }
                }
            }
            foreach (var agSt in agentState)
            {
                if (agSt.Value == null)
                {
                    Program.KillPlanners();
                    return false;

                }
            }

            return true;


        }
        public void AgentsGrounding(Agent agent, Dictionary<int, List<string>> finalPlan, string m_agentName, State agentState, List<KeyValuePair<string, CompoundFormula>> m_lplan)
        {
            List<string> ffLplan = null;
            List<Dictionary<CompoundFormula, string>> newPlan = new List<Dictionary<CompoundFormula, string>>();
            mutex2.WaitOne();
            List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>(m_lplan);
            // Dictionary<string, int> map = new Dictionary<string, int>(AdvancedLandmarkProjectionPlaner.map);
            mutex2.ReleaseMutex();
            CompoundFormula goalFormula = new CompoundFormula("and");
            string agentName;
            int counter = 0;
            foreach (KeyValuePair<string, CompoundFormula> eff in lplan)
            {
                agentName = eff.Key;
                goalFormula = new CompoundFormula(eff.Value);
                if (agentName.Equals(m_agentName))
                {
                    if (!threadContinueSearchFlag)
                        return;

                    mutex.WaitOne();
                    finalPlan.Add(counter, new List<string>());
                    mutex.ReleaseMutex();
                    bool bUnsolvable = false;
                    ExternalPlanners externalPlanners = new ExternalPlanners();
                    ffLplan = externalPlanners.FFPlan(agent.domain, agent.problem, agentState, goalFormula, agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                    if (ffLplan != null)
                    {
                        List<string> todo = ffLplan;
                        foreach (string act in todo)
                        {
                            bool flag = agentState.FullApplyII(agent.domain.mapActionNameToAction[act]);
                            if (!flag || !threadContinueSearchFlag)
                                return;
                            mutex.WaitOne();
                            finalPlan[counter].Add(act);
                            mutex.ReleaseMutex();
                        }

                    }
                    else
                    {
                        return;
                    }

                }
                else
                {
                    agentState.FullApplyFormulaEffect(goalFormula);
                }
                counter++;
            }
            mutex.WaitOne();
            threadAns.Add(true);
            mutex.ReleaseMutex();
        }

        public List<string> GetGroundPlan(Domain joinDomain)
        {
            // Console.WriteLine("\nPublic global plan found, searching for private plans");
            List<string> finalPlan = new List<string>();
            threadContinueSearchFlag = true;
            Dictionary<string, State> agentState = new Dictionary<string, State>();
            Dictionary<int, List<string>> dicFinalPlan = new Dictionary<int, List<string>>();
            try
            {
                List<KeyValuePair<string, CompoundFormula>> lplan = new List<KeyValuePair<string, CompoundFormula>>();
                foreach (string actname in highLevelplan)
                {
                    Action act = mapActionNameToAction[actname];
                    CompoundFormula effect = new CompoundFormula("and");
                    bool flag = false;
                    foreach (GroundedPredicate gp in act.HashEffects)
                    {
                        if (agents[map[act.agent]].PublicPredicates.Contains(gp))
                        {
                            //if (allKindOfpublicPreconditions.Contains(gp))
                            {
                                effect.AddOperand(gp);
                                flag = true;
                            }

                        }
                    }
                    if (flag)
                        lplan.Add(new KeyValuePair<string, CompoundFormula>(act.agent, effect));
                }
                foreach (Agent a in agents)
                {
                    agentState.Add(a.name, new State(a.startState));
                }
                threadAns = new List<bool>();
                List<Thread> threads = new List<Thread>();
                for (int i = 0; i < agents.Count; i++)
                {
                    State s = agentState[agents[i].name];
                    Agent agent = agents[i];
                    string name = agents[i].name;
                    Thread agentPlanning = new Thread(() => AgentsGrounding(agent, dicFinalPlan, name, s, lplan));
                    agentPlanning.Start();
                    threads.Add(agentPlanning);
                    //agentPlanning.Join();
                }
                foreach (Thread t in threads)
                {
                    t.Join(5 * 60000);
                }

                if (threadAns.Count != agents.Count)
                {
                    threadContinueSearchFlag = false;
                    foreach (Thread t in threads)
                    {
                        t.Join();
                    }
                    string f;
                    List<string> path = null;
                    RegGrounding(out path, out f);
                    return path;
                }
                for (int i = 0; i < dicFinalPlan.Count; i++)
                {
                    finalPlan.AddRange(dicFinalPlan[i]);
                }
                Dictionary<string, CompoundFormula> agentGoal = new Dictionary<string, CompoundFormula>();

                foreach (Agent a in agents)
                {
                    agentGoal.Add(a.name, new CompoundFormula("and"));
                    foreach (GroundedPredicate goalPredicate in a.goal)
                    {
                        agentGoal[a.name].AddOperand(goalPredicate);
                    }

                }
                foreach (var agent in agents)
                {
                    if (agentGoal[agent.name].Operands.Count > 0)
                    {

                        bool bUnsolvable = false;
                        ExternalPlanners externalPlanners = new ExternalPlanners();
                        // ffLplan = externalPlanners.Plan(true, true, agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);

                        ffLplan = externalPlanners.FFPlan(agents[map[agent.name]].domain, agents[map[agent.name]].problem, agentState[agent.name], agentGoal[agent.name], agent.m_actions, 5 * 60 * 1000, out bUnsolvable);
                        if (ffLplan != null)
                        {

                            List<string> todo = ffLplan;

                            foreach (string act in todo)
                            {
                                agentState[agent.name] = agentState[agent.name].ApplyII(agents[map[agent.name]].domain.mapActionNameToAction[act]);
                                finalPlan.Add(act);
                                foreach (Agent a in agents)
                                {
                                    if (!a.name.Equals(agent.name))
                                    {

                                        agentState[a.name] = agentState[a.name].ApplyEffect(agents[map[agent.name]].domain.mapActionNameToAction[act], a.Predicates);
                                    }
                                }
                            }
                        }
                        else
                        {
                            string f;
                            List<string> path = null;
                            RegGrounding(out path, out f);
                            return path;

                        }
                    }
                }
                foreach (var agSt in agentState)
                {
                    if (agSt.Value == null)
                    {
                        string f;
                        List<string> path = null;
                        RegGrounding(out path, out f);
                        return path;
                    }
                }

                /* State sCurrent = new State(globalInitialState);
                 foreach (string sAction in finalPlan)
                 {
                     State sNew = sCurrent.Apply(sAction, joinDomain);
                     if (sNew == null)
                     {
                         string f;
                         List<string> path = null;
                         RegGrounding(out path, out f);
                         return path;
                     }
                     sCurrent = sNew;
                 }*/

                return finalPlan;
            }
            catch (Exception ex)
            {
                string f;
                List<string> path = null;
                RegGrounding(out path, out f);
                return path;
            }
        }
    }
}
