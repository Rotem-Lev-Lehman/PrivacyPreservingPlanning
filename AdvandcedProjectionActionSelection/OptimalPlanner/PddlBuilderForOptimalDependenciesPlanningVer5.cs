using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.OptimalPlanner
{
    class PddlBuilderForOptimalDependenciesPlanningVer5
    {
        public const string dependencyType = "rotemDependency";
        public const string dependencySymbol = "rotemDependency";
        public const string agentType = "rotemAgent";
        public const string agentSymbol = "rotemAgent";
        public const string numberParameterType = "rotemNumber";
        public const string nextPredicateName = "rotemNext";
        public const string revealedNumberOfDependenciesPredicateName = "revealed-number-of-dependencies";
        public const string usedDependencyPredicateName = "used-dependency";
        public const string goingSoloPredicateName = "going-solo";
        public const string joinedStagePredicateName = "in-joined-stage";
        //public const int revealedDependencyCost = 1000;
        //public const int regularActionCost = 1;
        public const string objectType = "object";
        //public const string resetDependenciesActionName = "reset-dependencies-revealed";
        public int maxAmountOfDependencies; //Change this to be the new allowed maximal amount of dependencies at each iteration.
        private bool limitingTheNumberOfDependenciesToBeRevealed;

        public PddlBuilderForOptimalDependenciesPlanningVer5()
        {
            maxAmountOfDependencies = 1;
            limitingTheNumberOfDependenciesToBeRevealed = false;
        }

        private List<Constant> dependenciesConstants;
        private List<Constant> agentsConstants;
        private Dictionary<Dependency, Constant> mapDependencyToConstant; //maps the dependency to its corresponding name (constant)
        private Dictionary<Constant, Dependency> mapConstantToDependency; //maps the name (constant) to its corresponding dependency
        private Dictionary<Agent, Constant> mapAgentToConstant; //maps the agent to its corresponding name (constant)
        private Dictionary<Constant, Agent> mapConstantToAgent; //maps the name (constant) to its corresponding agent
        private List<Tuple<Dependency, Agent>> belongsToList; //contains the dependencies and their corresponding agent
        private Dictionary<Agent, List<Dependency>> agentsDependencies; //maps the agent to it's dependencies list
        private Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary; //maps the agent to it's precondition dictionary
        private Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect; //maps the agent to it's action -> dependencies_in_effects dictionary

        private List<Constant> numberConstants;
        private Constant num0Constant;
        private List<GroundedPredicate> nextPredicates;
        private List<GroundedPredicate> revealedNumberOfDependenciesPredicates;

        private Dictionary<Agent, int> amountOfAgentDependencies; //for each agent, contains his amount of dependencies
        public int maxDependenciesOfAgent; //contains the maximum number of dependencies for all of the agents

        private Domain joinedDomain;
        private Problem joinedProblem;
        private State joinedStartState;
       

        public Domain GetJoinedDomain()
        {
            return joinedDomain;
        }

        public Problem GetJoinedProblem()
        {
            return joinedProblem;
        }

        public State GetJoinedStartState()
        {
            return joinedStartState;
        }

        public void BuildPddlFiles(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect)
        {
            UpdateDomainAndProblemWithAgentsDependencies(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);
        }

        public void UpdateMaxDependenciesRevealed(int newMaxAmountOfDependencies)
        {
            limitingTheNumberOfDependenciesToBeRevealed = true;
            maxAmountOfDependencies = newMaxAmountOfDependencies; //update the max amount of dependencies allowed to the new one...
            /*
            if(!isRevealDependencyAction(joinedDomain.Actions[joinedDomain.Actions.Count - 1]))
            {
                throw new Exception("The last action of the joined domain is NOT reveal-dependency parameterized! FIX IT NOW");
                //If we do get here, you can just call the entire pddl builder from the start...
            }
            joinedDomain.Actions[joinedDomain.Actions.Count - 1] = GetRevealedDependencyParameterizedAction();
            */
        }

        private bool isRevealDependencyAction(Action action)
        {
            return action is ParametrizedAction && action.Name.Equals("reveal-dependency");
        }

        private void InitializeMemebers()
        {
            dependenciesConstants = new List<Constant>();
            agentsConstants = new List<Constant>();
            mapDependencyToConstant = new Dictionary<Dependency, Constant>();
            mapConstantToDependency = new Dictionary<Constant, Dependency>();
            mapAgentToConstant = new Dictionary<Agent, Constant>();
            mapConstantToAgent = new Dictionary<Constant, Agent>();
            belongsToList = new List<Tuple<Dependency, Agent>>();
            amountOfAgentDependencies = new Dictionary<Agent, int>();
            maxDependenciesOfAgent = -1;
            numberConstants = new List<Constant>();
            nextPredicates = new List<GroundedPredicate>();
            revealedNumberOfDependenciesPredicates = new List<GroundedPredicate>();

            joinedDomain = null;
            joinedProblem = null;
        }

        private void AddDependencyToMembers(Dependency dependency, Constant d, Agent agent)
        {
            dependenciesConstants.Add(d);
            mapDependencyToConstant.Add(dependency, d);
            mapConstantToDependency.Add(d, dependency);
            belongsToList.Add(new Tuple<Dependency, Agent>(dependency, agent));
        }

        private void AddAgentToMembers(Agent agent, Constant a)
        {
            agentsConstants.Add(a);
            mapAgentToConstant.Add(agent, a);
            mapConstantToAgent.Add(a, agent);
        }

        private void UpdateDomainAndProblemWithAgentsDependencies(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect)
        {
            InitializeAllDependencies(m_agents, agentsDependencies, agentsPreconditionDictionary, agentsActions2DependenciesInEffect);
            InitializeAllNumberConstants();
            InitializeAllRevealedNumberPredicates(m_agents);
            UpdateDependenciesIntoDomainsAndProblems(m_agents);
        }

        private void InitializeAllRevealedNumberPredicates(List<Agent> m_agents)
        {
            foreach(Agent agent in m_agents)
            {
                GroundedPredicate revealedNumber = GetGroundedRevealedNumberOfDependencies(agent, num0Constant);
                revealedNumberOfDependenciesPredicates.Add(revealedNumber);
            }
        }

        private void InitializeAllNumberConstants()
        {
            Constant prevNum = null;
            for(int i = 0; i <= maxAmountOfDependencies; i++)
            {
                Constant currNum = new Constant(numberParameterType, numberParameterType + i);
                numberConstants.Add(currNum);
                if (i == 0)
                {
                    num0Constant = currNum;
                }
                else // i > 0
                {
                    //create a next predicate to indicate that we are bigger than the previous number
                    GroundedPredicate nextPredicate = GetGroundedNextPredicate(prevNum, currNum);
                    nextPredicates.Add(nextPredicate);
                }
                prevNum = currNum;
            }
        }

        private void UpdateDependenciesIntoDomainsAndProblems(List<Agent> m_agents)
        {
            //GroundedFunctionPredicate totalCostFunctionPredicate = GetTotalCostFunction();

            Domain dJoined = new Domain("JoinedDomain", "");
            Problem pJoined = new Problem("JoinedProblem", dJoined);
            State publicStartState = new State(pJoined);
            HashSet<GroundedPredicate> allGoals = new HashSet<GroundedPredicate>();

            List<Action> allActions = new List<Action>();
            foreach (Agent agent in m_agents)
            {
                Dictionary<Predicate, List<Dependency>> predicate2DependenciesThatAcomplishIt = this.agentsPreconditionDictionary[agent];
                Dictionary<Action, List<Dependency>> action2DependenciesInItsEffects = this.agentsActions2DependenciesInEffect[agent];

                Tuple<GroundedPredicate, List<Predicate>> tuple = GetGoingSoloPredicatesForAgent(agent, m_agents);

                GroundedPredicate agentGoingSolo = tuple.Item1;
                List<Predicate> otherAgentsNotGoingSolo = tuple.Item2;

                foreach (Action action in agent.m_actions)
                {
                    //List<Dependency> dependenciesForAction = new List<Dependency>();
                    //List<Predicate> regularEffects = new List<Predicate>();
                    /*
                    if(action.Name == OptimalDependenciesPlanner.startStateDummyActionName)
                    {
                        continue;
                    }
                    */

                    CompoundFormula editedEffects = new CompoundFormula("and");
                    CompoundFormula editedPreconditions = new CompoundFormula("and");

                    if (!action.isPublic)
                    {
                        //if it is a private action, just use it as is...
                        Action editedPrivateAction = action.Clone();

                        foreach (Predicate p in action.HashPrecondition)
                        {
                            editedPreconditions.AddOperand(p); //anyways, add this precondition to the preconditions list...
                        }

                        foreach (Predicate notGoingSolo in otherAgentsNotGoingSolo)
                        {
                            editedPreconditions.AddOperand(notGoingSolo);
                        }

                        editedPrivateAction.Preconditions = editedPreconditions;
                        editedPrivateAction.SetEffects(action.Effects);

                        allActions.Add(editedPrivateAction);
                        continue;
                    }

                    List<Dependency> dependenciesInEffect = action2DependenciesInItsEffects[action];

                    

                    foreach(Predicate notGoingSolo in otherAgentsNotGoingSolo)
                    {
                        editedPreconditions.AddOperand(notGoingSolo);
                    }

                    foreach (Predicate p in action.HashPrecondition)
                    {
                        editedPreconditions.AddOperand(p); //anyways, add this precondition to the preconditions list...

                        if (predicate2DependenciesThatAcomplishIt.ContainsKey(p))
                        {
                            //Than this is a precondition that comes from a dependency...
                            //We should now go over all the possible dependencies that achive this predicate and add them to the following formula:
                            CompoundFormula cfOr = new CompoundFormula("or");

                            //Add the going-solo predicate as a precondition in the "or" so we will capture it as well:
                            cfOr.AddOperand(agentGoingSolo);

                            List<Dependency> dependenciesThatAcomplish = predicate2DependenciesThatAcomplishIt[p];

                            Predicate negationP = p.Negate();
                            bool negationInEffects = action.HashEffects.Contains(negationP);
                            
                            foreach (Dependency dependency in dependenciesThatAcomplish)
                            {
                                Constant d = mapDependencyToConstant[dependency];

                                CompoundFormula cfAnd = new CompoundFormula("and");
                                GroundedPredicate usedDependency = GetUsedDependencyGrounded(d);
                                GroundedPredicate revealedDependency = GetRevealedGrounded(d);
                                cfAnd.AddOperand(usedDependency);
                                cfAnd.AddOperand(revealedDependency);

                                /*
                                if (dependency.action.Name == OptimalDependenciesPlanner.startStateDummyActionName)
                                {
                                    cfOr.AddOperand(usedDependency);
                                }
                                else
                                */
                                {
                                    cfOr.AddOperand(cfAnd);
                                }

                                if (negationInEffects)
                                {
                                    //than we should put the negation of used-dependency in the effects as well:
                                    Predicate negationUsedDependency = usedDependency.Negate();
                                    editedEffects.AddOperand(negationUsedDependency);
                                }
                            }

                            editedPreconditions.AddOperand(cfOr);
                        }
                    }

                    foreach (Predicate p in action.HashEffects)
                    {
                        editedEffects.AddOperand(p); //anyways, add this effect to the effects list...
                        
                    }

                    foreach (Dependency dependency in dependenciesInEffect)
                    {

                        //Then this is a dependency dependent action, which means we need to duplicate it several times so that we have the action with the dependency revealed and without it
                        //dependenciesForAction.Add(dependency);

                        Constant d = mapDependencyToConstant[dependency];
                        GroundedPredicate usedDependency = GetUsedDependencyGrounded(d);
                        //GroundedPredicate revealedD = new GroundedPredicate("revealed");
                        //revealedD.AddConstant(d);

                        //CompoundFormula cfCondition = new CompoundFormula("when");
                        //cfCondition.AddOperand(revealedD); //condition
                        //cfCondition.AddOperand(p); //result = the predicate we want to reveal.


                        editedEffects.AddOperand(usedDependency);
                    }

                    //Current:
                    Action editedAction = action.Clone();
                    //editedAction.Name = name;
                    editedAction.Name = action.Name;
                    editedAction.Preconditions = editedPreconditions;
                    editedAction.SetEffects(editedEffects);
                    allActions.Add(editedAction);
                    
                }
            }

            List<ParametrizedPredicate> parametrizedPredicates = GetParametrizedPredicates(); //Add these predeicated to the joined domain. These predicates are general ones that are part of our transformation to a different problem.
            List<GroundedPredicate> belongsToPredicates = GetBelongsToGroundedPredicates();
            //List<GroundedPredicate> revealedSomethingPredicates = GetRevealedSomethingGroundedPredicates();
            //List<GroundedFunctionPredicate> amountOfDepRevPredicates = GetInitAmountOfDependenciesRevealedToZeroPredicates(m_agents);
            //GroundedFunctionPredicate initTotalCostToZeroPredicate = GetInitTotalCostToZeroPredicate(totalCostFunctionPredicate);
            GroundedPredicate inJoinedStageGrounded = GetGroundedInJoinedStagePredicate();
            List<Predicate> notGoingSolos = GetNotGoingSoloForStartState(m_agents);

            List<Action> dependenciesActions = GetDependenciesActions();
            allActions.AddRange(dependenciesActions);

            List<string> myNewTypes = GetMyNewTypes();

            //dJoined.AddFunction(totalCostFunctionPredicate.ToString());
            dJoined.Actions = allActions;

            foreach (Agent agent in m_agents)
            {
                Domain d = agent.domain;
                foreach (ParametrizedPredicate pp in d.Predicates)
                    dJoined.Predicates.Add(pp);
                foreach (string sType in d.Types)
                    if (!dJoined.Types.Contains(sType))
                        dJoined.Types.Add(sType);
                foreach (KeyValuePair<string, string> pair in d.TypeHierarchy)
                    dJoined.TypeHierarchy[pair.Key] = pair.Value;
                foreach (Constant c in d.Constants)
                    dJoined.Constants.Add(c);

                foreach (GroundedPredicate pgp in agent.startState.Predicates)
                {
                    publicStartState.AddPredicate(pgp);
                }

                foreach (GroundedPredicate goalP in agent.goal)
                {
                    allGoals.Add(goalP);
                }
            }

            /*
            foreach (Dependency dependency in OptimalDependenciesPlanner.startStateDependencies)
            {
                Constant dep = mapDependencyToConstant[dependency];
                GroundedPredicate usedDependency = GetUsedDependencyGrounded(dep);
                publicStartState.AddPredicate(usedDependency);
            }
            */

            foreach (ParametrizedPredicate pp in parametrizedPredicates)
            {
                if (dJoined.Predicates.Contains(pp))
                    throw new Exception("The dependencies predicates must be unique, and cannot be in another domain.");
                dJoined.Predicates.Add(pp);
            }

            foreach (string type in myNewTypes)
            {
                if (dJoined.Types.Contains(type))
                    throw new Exception("The dependency and agent types must be unique, and cannot be in another domain.");
                dJoined.Types.Add(type);
                dJoined.TypeHierarchy[type] = objectType;
            }

            foreach (Constant d in dependenciesConstants)
            {
                if (dJoined.Constants.Contains(d))
                    throw new Exception("The dependencies constant names must be unique, and cannot be in another domain.");
                dJoined.Constants.Add(d);
            }

            foreach (Constant a in agentsConstants)
            {
                if (dJoined.Constants.Contains(a))
                    throw new Exception("The agents constant names must be unique, and cannot be in another domain.");
                dJoined.Constants.Add(a);
            }

            foreach (Constant n in numberConstants)
            {
                if (dJoined.Constants.Contains(n))
                    throw new Exception("The numbers constant names must be unique, and cannot be in another domain.");
                dJoined.Constants.Add(n);
            }


            //private List<GroundedPredicate> nextPredicates;
            //private List<GroundedPredicate> revealedNumberOfDependenciesPredicates;

            //Add to start state:

            foreach (GroundedPredicate gp in belongsToPredicates)
            {
                if (dJoined.Predicates.Contains(gp))
                    throw new Exception("The belongs-to predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(gp);
            }
            /*
            foreach (GroundedPredicate gp in revealedSomethingPredicates)
            {
                if (dJoined.Predicates.Contains(gp))
                    throw new Exception("The revealed-something predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(gp);
            }
            */

            /*
            foreach(GroundedFunctionPredicate gfp in amountOfDepRevPredicates)
            {
                if (dJoined.Predicates.Contains(gfp))
                    throw new Exception("The amount-of-dependencies-revealed predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(gfp);
            }
            */
            foreach (GroundedPredicate gp in nextPredicates)
            {
                if (dJoined.Predicates.Contains(gp))
                    throw new Exception("The next predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(gp);
            }

            foreach (GroundedPredicate gp in revealedNumberOfDependenciesPredicates)
            {
                if (dJoined.Predicates.Contains(gp))
                    throw new Exception("The revealed-number-of-dependencies predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(gp);
            }

            if (dJoined.Predicates.Contains(inJoinedStageGrounded))
                throw new Exception("The in-joined-stage predicate must be unique, and cannot be in another domain.");
            publicStartState.AddPredicate(inJoinedStageGrounded);

            foreach(Predicate p in notGoingSolos)
            {
                if (dJoined.Predicates.Contains(p))
                    throw new Exception("The not(going-solo agent) predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(p);
            }
            
            /*
            if (dJoined.Predicates.Contains(initTotalCostToZeroPredicate))
                throw new Exception("The initialization of total cost predicate must be unique, and cannot be in another domain.");
            publicStartState.AddPredicate(initTotalCostToZeroPredicate);
            */
            foreach (Predicate pInit in publicStartState.Predicates)
                pJoined.AddKnown(pInit);

            CompoundFormula goalf = new CompoundFormula("and");
            foreach (GroundedPredicate goalP in allGoals)
            {
                goalf.AddOperand(goalP);
            }

            pJoined.Goal = goalf;

            //pJoined.AddMetric("(:metric " + "minimize " + totalCostFunctionPredicate.ToString() + ")");

            joinedDomain = dJoined;
            joinedProblem = pJoined;
            joinedStartState = publicStartState;
        }

        private Tuple<GroundedPredicate, List<Predicate>> GetGoingSoloPredicatesForAgent(Agent agent, List<Agent> m_agents)
        {
            GroundedPredicate agentGoingSolo = GetGroundedGoingSoloPredicate(agent);
            List<Predicate> otherAgentsNotGoingSolo = GetNotGoingSoloAgents(agent, m_agents, false);
           
            Tuple<GroundedPredicate, List<Predicate>> tuple = new Tuple<GroundedPredicate, List<Predicate>>(agentGoingSolo, otherAgentsNotGoingSolo);
            return tuple;
        }

        private List<Predicate> GetNotGoingSoloForStartState(List<Agent> m_agents)
        {
            return GetNotGoingSoloAgents(null, m_agents, true);
        }

        private List<Predicate> GetNotGoingSoloAgents(Agent agent, List<Agent> m_agents, bool allAgents)
        {
            //allAgents = True --> returns notGoingSolo for all agents in m_agents
            //allAgents = False --> returns notGoingSolo for all agents in m_agents but the specified agent
            List<Predicate> otherAgentsNotGoingSolo = new List<Predicate>();
            foreach (Agent otherAgent in m_agents)
            {
                if (allAgents || agent != otherAgent)
                {
                    GroundedPredicate otherAgentGoingSolo = GetGroundedGoingSoloPredicate(otherAgent);
                    Predicate negationOtherAgentGoingSolo = otherAgentGoingSolo.Negate();
                    otherAgentsNotGoingSolo.Add(negationOtherAgentGoingSolo);
                }
            }
            return otherAgentsNotGoingSolo;
        }

        private GroundedPredicate GetRevealedGrounded(Constant d)
        {
            GroundedPredicate revealedD = new GroundedPredicate("revealed");
            revealedD.AddConstant(d);
            return revealedD;
        }

        public static List<List<T>> GetAllCombos<T>(List<T> list)
        {
            int comboCount = (int)Math.Pow(2, list.Count) - 1;
            List<List<T>> result = new List<List<T>>();
            for (int i = 0; i < comboCount + 1; i++)
            {
                // make each combo here
                result.Add(new List<T>());
                for (int j = 0; j < list.Count; j++)
                {
                    if ((i >> j) % 2 != 0)
                        result.Last().Add(list[j]);
                }
            }
            return result;
        }

        /*
        private List<GroundedFunctionPredicate> GetInitAmountOfDependenciesRevealedToZeroPredicates(List<Agent> m_agents)
        {
            List<GroundedFunctionPredicate> predicates = new List<GroundedFunctionPredicate>();
            foreach(Agent agent in m_agents)
            {
                predicates.Add(GetInitAmountOfDependenciesRevealedToZeroForAgentPredicate(agent));
            }
            return predicates;
        }

        private GroundedFunctionPredicate GetInitAmountOfDependenciesRevealedToZeroForAgentPredicate(Agent agent)
        {
            GroundedFunctionPredicate initAmountOfDependenciesRevealedToZero = new GroundedFunctionPredicate("=");
            Constant a = mapAgentToConstant[agent];
            GroundedFunctionPredicate amountOfDepRevGrounded = GetAmountOfDependenciesRevealedGrounded(a);
            FunctionConstant functionConstant = new FunctionConstant(amountOfDepRevGrounded);
            initAmountOfDependenciesRevealedToZero.AddFunction(functionConstant);
            initAmountOfDependenciesRevealedToZero.AddNumber(0);

            return initAmountOfDependenciesRevealedToZero;
        }
        */

        private GroundedFunctionPredicate GetInitTotalCostToZeroPredicate(GroundedFunctionPredicate totalCostFunctionPredicate)
        {
            GroundedFunctionPredicate initTotalCostToZeroPredicate = new GroundedFunctionPredicate("=");
            FunctionConstant functionConstant = new FunctionConstant(totalCostFunctionPredicate);
            initTotalCostToZeroPredicate.AddFunction(functionConstant);
            initTotalCostToZeroPredicate.AddNumber(0);

            return initTotalCostToZeroPredicate;
        }

        /*
        private List<GroundedPredicate> GetRevealedSomethingGroundedPredicates()
        {
            List<GroundedPredicate> revealedSomethingPredicates = new List<GroundedPredicate>();
            foreach(Constant a in agentsConstants)
            {
                GroundedPredicate revealedSomething = new GroundedPredicate("revealed-something");
                revealedSomething.AddConstant(a);

                revealedSomethingPredicates.Add(revealedSomething);
            }

            return revealedSomethingPredicates;
        }
        */

        private List<GroundedPredicate> GetBelongsToGroundedPredicates()
        {
            List<GroundedPredicate> belongsToPredicates = new List<GroundedPredicate>();
            foreach(Tuple<Dependency, Agent> tuple in belongsToList)
            {
                Constant d = mapDependencyToConstant[tuple.Item1];
                Constant a = mapAgentToConstant[tuple.Item2];
                GroundedPredicate belongsTo = new GroundedPredicate("belongs-to");
                belongsTo.AddConstant(d);
                belongsTo.AddConstant(a);

                belongsToPredicates.Add(belongsTo);
            }

            return belongsToPredicates;
        }

        private GroundedPredicate GetUsedDependencyGrounded(Constant d)
        {
            GroundedPredicate usedDependency = new GroundedPredicate(usedDependencyPredicateName);
            usedDependency.AddConstant(d);
            return usedDependency;
        }

        private List<string> GetMyNewTypes()
        {
            List<string> myNewTypes = new List<string>();
            myNewTypes.Add(dependencyType);
            myNewTypes.Add(agentType);
            myNewTypes.Add(numberParameterType);
            return myNewTypes;
        }

        private List<Action> GetDependenciesActions()
        {
            List<Action> dependenciesActions = new List<Action>();
            dependenciesActions.Add(GetRevealedDependencyParameterizedAction());
            dependenciesActions.Add(GetStartGoingSoloParameterizedAction());
            
            return dependenciesActions;
        }

        private Action GetStartGoingSoloParameterizedAction()
        {
            ParametrizedAction startGoingSoloParameterized = new ParametrizedAction("start-going-solo");
            Parameter agentParameter = GetAgentParameter();
            startGoingSoloParameterized.AddParameter(agentParameter);
            ParametrizedPredicate inJoinedStage = GetParameterizedInJoinedStagePredicate();
            ParametrizedPredicate goingSolo = GetParameterizedGoingSoloPredicate();

            Predicate notInJoinedStage = inJoinedStage.Negate();

            PredicateFormula preconditions = new PredicateFormula(inJoinedStage);
            CompoundFormula effects = new CompoundFormula("and");
            effects.AddOperand(goingSolo);
            effects.AddOperand(notInJoinedStage);

            startGoingSoloParameterized.Preconditions = preconditions;
            startGoingSoloParameterized.SetEffects(effects);

            return startGoingSoloParameterized;
        }

        private Action GetRevealedDependencyParameterizedAction()
        {
            ParametrizedAction revealDependencyParameterized = new ParametrizedAction("reveal-dependency");
            Parameter agentParameter = GetAgentParameter();
            Parameter dependencyParameter = GetDependencyParameter();
            Parameter num1Parameter = GetNum1Parameter();
            Parameter num2Parameter = GetNum2Parameter();
            revealDependencyParameterized.AddParameter(agentParameter);
            revealDependencyParameterized.AddParameter(dependencyParameter);
            revealDependencyParameterized.AddParameter(num1Parameter);
            revealDependencyParameterized.AddParameter(num2Parameter);

            CompoundFormula preconditions = new CompoundFormula("and");
            CompoundFormula effects = new CompoundFormula("and");

            ParametrizedPredicate nextN1N2 = GetParameterizedNext(num1Parameter, num2Parameter);
            ParametrizedPredicate revealedNumberOfDependenciesN1 = GetParameterizedRevealedNumberOfDependencies(agentParameter, num1Parameter);
            ParametrizedPredicate revealedNumberOfDependenciesN2 = GetParameterizedRevealedNumberOfDependencies(agentParameter, num2Parameter);

            //ParametrizedPredicate revealedSomething = GetParameterizedRevealedSomething();
            ParametrizedPredicate revealedDependency = GetParameterizedRevealed();
            ParametrizedPredicate belongsTo = GetParameterizedBelongsTo();

            Predicate NotRevealedNumberOfDependenciesN1 = revealedNumberOfDependenciesN1.Negate();
            //Predicate notRevealedSomething = revealedSomething.Negate();
            //Predicate notRevealedDependency = revealedDependency.Negate();

            preconditions.AddOperand(nextN1N2);
            preconditions.AddOperand(revealedNumberOfDependenciesN1);
            //preconditions.AddOperand(notRevealedSomething);
            //preconditions.AddOperand(notRevealedDependency);
            preconditions.AddOperand(belongsTo);

            //effects.AddOperand(revealedSomething);
            effects.AddOperand(revealedDependency);
            if (limitingTheNumberOfDependenciesToBeRevealed)
            {
                effects.AddOperand(NotRevealedNumberOfDependenciesN1);
                effects.AddOperand(revealedNumberOfDependenciesN2);
            }

            revealDependencyParameterized.Preconditions = preconditions;
            revealDependencyParameterized.SetEffects(effects);

            return revealDependencyParameterized;
        }

        private ParametrizedPredicate GetParameterizedRevealedNumberOfDependencies()
        {
            Parameter agentParameter = GetAgentParameter();
            Parameter numParameter = GetNumberParameter();

            return GetParameterizedRevealedNumberOfDependencies(agentParameter, numParameter);
        }

        private ParametrizedPredicate GetParameterizedRevealedNumberOfDependencies(Parameter agentParameter, Parameter numParameter)
        {
            ParametrizedPredicate parameterizedRevealedNumberOfDependencies = new ParametrizedPredicate(revealedNumberOfDependenciesPredicateName);
            parameterizedRevealedNumberOfDependencies.AddParameter(agentParameter);
            parameterizedRevealedNumberOfDependencies.AddParameter(numParameter);
            return parameterizedRevealedNumberOfDependencies;
        }

        private GroundedPredicate GetGroundedRevealedNumberOfDependencies(Agent agent, Constant numConstant)
        {
            Constant a = mapAgentToConstant[agent];
            GroundedPredicate groundedRevealedNumberOfDependencies = new GroundedPredicate(revealedNumberOfDependenciesPredicateName);
            groundedRevealedNumberOfDependencies.AddConstant(a);
            groundedRevealedNumberOfDependencies.AddConstant(numConstant);
            return groundedRevealedNumberOfDependencies;
        }

        private ParametrizedPredicate GetParameterizedGoingSoloPredicate()
        {
            ParametrizedPredicate parameterizedGoingSolo = new ParametrizedPredicate(goingSoloPredicateName);
            Parameter agent = GetAgentParameter();
            parameterizedGoingSolo.AddParameter(agent);
            return parameterizedGoingSolo;
        }

        private GroundedPredicate GetGroundedGoingSoloPredicate(Agent agent)
        {
            GroundedPredicate groundedGoingSolo = new GroundedPredicate(goingSoloPredicateName);
            Constant a = mapAgentToConstant[agent];
            groundedGoingSolo.AddConstant(a);
            return groundedGoingSolo;
        }

        private ParametrizedPredicate GetParameterizedInJoinedStagePredicate()
        {
            ParametrizedPredicate parameterizedInJoinedStage = new ParametrizedPredicate(joinedStagePredicateName);
            
            return parameterizedInJoinedStage;
        }

        private GroundedPredicate GetGroundedInJoinedStagePredicate()
        {
            GroundedPredicate groundedInJoinedStage = new GroundedPredicate(joinedStagePredicateName);

            return groundedInJoinedStage;
        }

        private ParametrizedPredicate GetParameterizedNext()
        {
            Parameter num1Parameter = GetNum1Parameter();
            Parameter num2Parameter = GetNum2Parameter();

            return GetParameterizedNext(num1Parameter, num2Parameter);
        }

        private ParametrizedPredicate GetParameterizedNext(Parameter num1Parameter, Parameter num2Parameter)
        {
            ParametrizedPredicate parameterizedNext = new ParametrizedPredicate(nextPredicateName);
            parameterizedNext.AddParameter(num1Parameter);
            parameterizedNext.AddParameter(num2Parameter);
            return parameterizedNext;
        }

        private GroundedPredicate GetGroundedNextPredicate(Constant num1, Constant num2)
        {
            GroundedPredicate groundedNext = new GroundedPredicate(nextPredicateName);
            groundedNext.AddConstant(num1);
            groundedNext.AddConstant(num2);
            return groundedNext;
        }

        private Parameter GetNum2Parameter()
        {
            return GetNumberParameter(2);
        }

        private Parameter GetNum1Parameter()
        {
            return GetNumberParameter(1);
        }

        private Parameter GetNumberParameter(int numID)
        {
            return new Parameter(numberParameterType, "?" + numberParameterType + numID);
        }

        private Parameter GetNumberParameter()
        {
            return new Parameter(numberParameterType, "?" + numberParameterType);
        }

        /*
        private ParameterizedFunctionPredicate GetIncreaseAmountOfDependenciesRevealedParameterized(ParameterizedFunctionPredicate amountOfDependenciesRevealedParameterized)
        {
            ParameterizedFunctionPredicate increaseAmountOfDepRev = new ParameterizedFunctionPredicate("increase");
            FunctionParameter functionParameterAmountOfDepRev = new FunctionParameter(amountOfDependenciesRevealedParameterized);
            increaseAmountOfDepRev.AddFunction(functionParameterAmountOfDepRev);
            increaseAmountOfDepRev.AddNumber(1); //increase by 1.
            return increaseAmountOfDepRev;
        }

        private GroundedFunctionPredicate GetIncreaseAmountOfDependenciesRevealedGrounded(GroundedFunctionPredicate amountOfDepRevGrounded)
        {
            GroundedFunctionPredicate increaseAmountOfDepRev = new GroundedFunctionPredicate("increase");
            FunctionConstant functionParameterAmountOfDepRev = new FunctionConstant(amountOfDepRevGrounded);
            increaseAmountOfDepRev.AddFunction(functionParameterAmountOfDepRev);
            increaseAmountOfDepRev.AddNumber(1); //increase by 1.
            return increaseAmountOfDepRev;
        }
        
        private ParameterizedFunctionPredicate GetEqualsToMax(ParameterizedFunctionPredicate amountOfDependenciesRevealedParameterized)
        {
            ParameterizedFunctionPredicate equalsToMax = new ParameterizedFunctionPredicate("=");
            FunctionParameter functionParameterAmountOfDepRev = new FunctionParameter(amountOfDependenciesRevealedParameterized);
            equalsToMax.AddFunction(functionParameterAmountOfDepRev);
            equalsToMax.AddNumber(maxAmountOfDependencies);
            return equalsToMax;
        }

        private GroundedFunctionPredicate GetEqualsToMaxGrounded(GroundedFunctionPredicate amountOfDepRevGrounded)
        {
            GroundedFunctionPredicate equalsToMax = new GroundedFunctionPredicate("=");
            FunctionConstant functionConstantAmountOfDepRev = new FunctionConstant(amountOfDepRevGrounded);
            equalsToMax.AddFunction(functionConstantAmountOfDepRev);
            equalsToMax.AddNumber(maxAmountOfDependencies);
            return equalsToMax;
        }

        private ParameterizedFunctionPredicate GetAmountOfDependenciesRevealedParameterized()
        {
            ParameterizedFunctionPredicate amountOfDependenciesRevealed = new ParameterizedFunctionPredicate("amount-of-dependencies-revealed");
            Parameter agentParameter = GetAgentParameter();
            amountOfDependenciesRevealed.AddParameter(agentParameter);
            return amountOfDependenciesRevealed;
        }

        private GroundedFunctionPredicate GetAmountOfDependenciesRevealedGrounded(Constant agent)
        {
            GroundedFunctionPredicate amountOfDependenciesRevealed = new GroundedFunctionPredicate("amount-of-dependencies-revealed");
            amountOfDependenciesRevealed.AddConstant(agent);

            return amountOfDependenciesRevealed;
        }
        */

        private GroundedFunctionPredicate GetIncreaseTotalCostFunction(GroundedFunctionPredicate totalCostFunctionPredicate, int cost)
        {
            GroundedFunctionPredicate increaseFP = new GroundedFunctionPredicate("increase");

            FunctionConstant functionConstant = new FunctionConstant(totalCostFunctionPredicate);
            increaseFP.AddFunction(functionConstant);
            increaseFP.AddNumber(cost);

            return increaseFP;
        }

        private GroundedFunctionPredicate GetTotalCostFunction()
        {
            GroundedFunctionPredicate totalCostFunction = new GroundedFunctionPredicate("total-cost");
            return totalCostFunction;
        }

        private List<ParametrizedPredicate> GetParametrizedPredicates()
        {
            List<ParametrizedPredicate> parametrizedPredicates = new List<ParametrizedPredicate>();
            parametrizedPredicates.Add(GetParameterizedRevealed());
            parametrizedPredicates.Add(GetParameterizedBelongsTo());
            //parametrizedPredicates.Add(GetParameterizedRevealedSomething());
            parametrizedPredicates.Add(GetParameterizedNext());
            parametrizedPredicates.Add(GetParameterizedRevealedNumberOfDependencies());

            parametrizedPredicates.Add(GetParameterizedUsedDependency());

            parametrizedPredicates.Add(GetParameterizedGoingSoloPredicate());
            parametrizedPredicates.Add(GetParameterizedInJoinedStagePredicate());

            return parametrizedPredicates;
        }

        private ParametrizedPredicate GetParameterizedUsedDependency()
        {
            ParametrizedPredicate parametrizedUsedDependency = new ParametrizedPredicate(usedDependencyPredicateName);
            Parameter dependencyParameter = GetDependencyParameter();
            parametrizedUsedDependency.AddParameter(dependencyParameter);
            return parametrizedUsedDependency;
        }

        /*
        private ParametrizedPredicate GetParameterizedRevealedSomething()
        {
           ParametrizedPredicate parametrizedRevealedSomething = new ParametrizedPredicate("revealed-something");
           Parameter agentParameter = GetAgentParameter();
           parametrizedRevealedSomething.AddParameter(agentParameter);
           return parametrizedRevealedSomething;
        }
        */
        private ParametrizedPredicate GetParameterizedBelongsTo()
        {
            ParametrizedPredicate parametrizedBelongsTo = new ParametrizedPredicate("belongs-to");
            Parameter dependencyParameter = GetDependencyParameter();
            Parameter agentParameter = GetAgentParameter();
            parametrizedBelongsTo.AddParameter(dependencyParameter);
            parametrizedBelongsTo.AddParameter(agentParameter);
            return parametrizedBelongsTo;
        }

        private ParametrizedPredicate GetParameterizedRevealed()
        {
            ParametrizedPredicate parametrizedRevealed = new ParametrizedPredicate("revealed");
            Parameter dependencyParameter = GetDependencyParameter();
            parametrizedRevealed.AddParameter(dependencyParameter);
            return parametrizedRevealed;
        }

        private Parameter GetDependencyParameter()
        {
            return new Parameter(dependencyType, "?" + dependencyType);
        }

        private Parameter GetAgentParameter()
        {
            return new Parameter(agentType, "?" + agentType);
        }

        private void InitializeAllDependencies(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies, Dictionary<Agent, Dictionary<Predicate, List<Dependency>>> agentsPreconditionDictionary, Dictionary<Agent, Dictionary<Action, List<Dependency>>> agentsActions2DependenciesInEffect)
        {
            this.agentsDependencies = agentsDependencies;
            this.agentsPreconditionDictionary = agentsPreconditionDictionary;
            this.agentsActions2DependenciesInEffect = agentsActions2DependenciesInEffect;
            InitializeMemebers();
            int dependenciesIndex = 0;
            foreach (Agent agent in m_agents)
            {
                List<Dependency> dependenciesList = agentsDependencies[agent];

                amountOfAgentDependencies[agent] = dependenciesList.Count;
                if(maxDependenciesOfAgent < dependenciesList.Count)
                {
                    maxDependenciesOfAgent = dependenciesList.Count;
                }

                foreach (Dependency dependency in dependenciesList)
                {
                    Constant d = new Constant(dependencyType, dependencySymbol + dependenciesIndex);
                    AddDependencyToMembers(dependency, d, agent);
                    dependenciesIndex++;
                }
                Constant a = new Constant(agentType, agentSymbol + agent.getID());
                AddAgentToMembers(agent, a);
            }
        }
    }
}
