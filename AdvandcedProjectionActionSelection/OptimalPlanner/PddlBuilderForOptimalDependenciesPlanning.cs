using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning.AdvandcedProjectionActionSelection.OptimalPlanner
{
    class PddlBuilderForOptimalDependenciesPlanning
    {
        public const string dependencyType = "rotemDependency";
        public const string dependencySymbol = "rotemDependency";
        public const string agentType = "rotemAgent";
        public const string agentSymbol = "rotemAgent";
        public const int revealedDependencyCost = 1000;
        public const int regularActionCost = 1;
        public const string objectType = "object";
        public const string resetDependenciesActionName = "reset-dependencies-revealed";

        private List<Constant> dependenciesConstants;
        private List<Constant> agentsConstants;
        private Dictionary<Dependency, Constant> mapDependencyToConstant; //maps the dependency to its corresponding name (constant)
        private Dictionary<Constant, Dependency> mapConstantToDependency; //maps the name (constant) to its corresponding dependency
        private Dictionary<Agent, Constant> mapAgentToConstant; //maps the agent to its corresponding name (constant)
        private Dictionary<Constant, Agent> mapConstantToAgent; //maps the name (constant) to its corresponding agent
        private List<Tuple<Dependency, Agent>> belongsToList; //contains the dependencies and their corresponding agent
        private Dictionary<Agent, List<Dependency>> agentsDependencies; //maps the agent to it's dependencies list

        private Dictionary<Agent, int> amountOfAgentDependencies; //for each agent, contains his amount of dependencies
        private int maxDependenciesOfAgent; //contains the maximum number of dependencies for all of the agents

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

        public void BuildPddlFiles(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies)
        {
            UpdateDomainAndProblemWithAgentsDependencies(m_agents, agentsDependencies);
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

        private void UpdateDomainAndProblemWithAgentsDependencies(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies)
        {
            InitializeAllDependencies(m_agents, agentsDependencies);
            UpdateDependenciesIntoDomainsAndProblems(m_agents);
        }

        private void UpdateDependenciesIntoDomainsAndProblems(List<Agent> m_agents)
        {
            GroundedFunctionPredicate totalCostFunctionPredicate = GetTotalCostFunction();

            Domain dJoined = new Domain("JoinedDomain", "");
            Problem pJoined = new Problem("JoinedProblem", dJoined);
            State publicStartState = new State(pJoined);
            HashSet<GroundedPredicate> allGoals = new HashSet<GroundedPredicate>();

            List<Action> allActions = new List<Action>();
            foreach (Agent agent in m_agents)
            {
                foreach(Action action in agent.m_actions)
                {
                    List<Dependency> dependenciesForAction = new List<Dependency>();
                    List<Predicate> regularEffects = new List<Predicate>();
                    
                    foreach(Predicate p in action.HashEffects)
                    {
                        Dependency dependency = new Dependency(action, p);
                        if (mapDependencyToConstant.ContainsKey(dependency))
                        {
                            //Then this is a dependency dependent action, which means we need to duplicate it several times so that we have the action with the dependency revealed and without it
                            dependenciesForAction.Add(dependency);
                            /*
                            Constant d = mapDependencyToConstant[dependency];
                            GroundedPredicate revealedD = new GroundedPredicate("revealed");
                            revealedD.AddConstant(d);
                            
                            CompoundFormula cfCondition = new CompoundFormula("when");
                            cfCondition.AddOperand(revealedD); //condition
                            cfCondition.AddOperand(p); //result = the predicate we want to reveal.
                            
                            editedEffects.AddOperand(cfCondition);
                            */
                        }
                        else
                        {
                            regularEffects.Add(p);
                            //editedEffects.AddOperand(p); //it is not a dependency, so just reveal it regularly...
                        }
                    }

                    List<List<Dependency>> allPermutations = GetAllCombos(dependenciesForAction);
                    foreach(List<Dependency> currentPermutation in allPermutations)
                    {
                        //foreach permutation, create a corresponding action
                        string name = action.Name;
                        CompoundFormula editedEffects = new CompoundFormula("and");
                        CompoundFormula editedPreconditions = new CompoundFormula("and");
                        foreach(Predicate p in action.HashPrecondition)
                        {
                            editedPreconditions.AddOperand(p);
                        }

                        foreach(Predicate p in regularEffects)
                        {
                            editedEffects.AddOperand(p);
                        }

                        if(currentPermutation.Count > 0)
                        {
                            name += "_with_dependencies";
                        }
                        foreach(Dependency dependency in currentPermutation)
                        {
                            Constant d = mapDependencyToConstant[dependency];
                            GroundedPredicate revealedD = new GroundedPredicate("revealed");
                            revealedD.AddConstant(d);

                            name += "_" + d.Name;
                            editedPreconditions.AddOperand(revealedD);
                            editedEffects.AddOperand(dependency.predicate);
                        }

                        editedEffects.AddOperand(GetIncreaseTotalCostFunction(totalCostFunctionPredicate, regularActionCost));

                        Action editedAction = action.Clone();
                        editedAction.Name = name;
                        editedAction.Preconditions = editedPreconditions;
                        editedAction.SetEffects(editedEffects);
                        allActions.Add(editedAction);
                    }
                }
            }

            List<ParametrizedPredicate> parametrizedPredicates = GetParametrizedPredicates(); //Add these predeicated to the joined domain. These predicates are general ones that are part of our transformation to a different problem.
            List<GroundedPredicate> belongsToPredicates = GetBelongsToGroundedPredicates();
            List<GroundedPredicate> revealedSomethingPredicates = GetRevealedSomethingGroundedPredicates();
            GroundedFunctionPredicate initTotalCostToZeroPredicate = GetInitTotalCostToZeroPredicate(totalCostFunctionPredicate);

            List<Action> dependenciesActions = GetDependenciesActions(totalCostFunctionPredicate, m_agents);
            allActions.AddRange(dependenciesActions);

            List<string> dependenciesAndAgentsTypes = GetDependenciesAndAgentsTypes();

            dJoined.AddFunction(totalCostFunctionPredicate.ToString());
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

                foreach(GroundedPredicate goalP in agent.goal)
                {
                    allGoals.Add(goalP);
                }
            }

            foreach (ParametrizedPredicate pp in parametrizedPredicates)
            {
                if (dJoined.Predicates.Contains(pp))
                    throw new Exception("The dependencies predicates must be unique, and cannot be in another domain.");
                dJoined.Predicates.Add(pp);
            }

            foreach (string type in dependenciesAndAgentsTypes)
            {
                if (dJoined.Types.Contains(type))
                    throw new Exception("The dependency and agent types must be unique, and cannot be in another domain.");
                dJoined.Types.Add(type);
                dJoined.TypeHierarchy[type] = objectType;
            }

            foreach(Constant d in dependenciesConstants)
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

            //Add to start state:

            foreach (GroundedPredicate gp in belongsToPredicates)
            {
                if (dJoined.Predicates.Contains(gp))
                    throw new Exception("The belongs-to predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(gp);
            }

            foreach (GroundedPredicate gp in revealedSomethingPredicates)
            {
                if (dJoined.Predicates.Contains(gp))
                    throw new Exception("The revealed-something predicates must be unique, and cannot be in another domain.");
                publicStartState.AddPredicate(gp);
            }

            if (dJoined.Predicates.Contains(initTotalCostToZeroPredicate))
                throw new Exception("The initialization of total cost predicate must be unique, and cannot be in another domain.");
            publicStartState.AddPredicate(initTotalCostToZeroPredicate);

            foreach (Predicate pInit in publicStartState.Predicates)
                pJoined.AddKnown(pInit);

            CompoundFormula goalf = new CompoundFormula("and");
            foreach (GroundedPredicate goalP in allGoals)
            {
                goalf.AddOperand(goalP);
            }
            
            pJoined.Goal = goalf;
            
            pJoined.AddMetric("(:metric " + "minimize " + totalCostFunctionPredicate.ToString() + ")");

            joinedDomain = dJoined;
            joinedProblem = pJoined;
            joinedStartState = publicStartState;
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

        private GroundedFunctionPredicate GetInitTotalCostToZeroPredicate(GroundedFunctionPredicate totalCostFunctionPredicate)
        {
            GroundedFunctionPredicate initTotalCostToZeroPredicate = new GroundedFunctionPredicate("=");
            FunctionConstant functionConstant = new FunctionConstant(totalCostFunctionPredicate);
            initTotalCostToZeroPredicate.AddFunction(functionConstant);
            initTotalCostToZeroPredicate.AddNumber(0);

            return initTotalCostToZeroPredicate;
        }

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

        private List<string> GetDependenciesAndAgentsTypes()
        {
            List<string> dependenciesAndAgentsTypes = new List<string>();
            dependenciesAndAgentsTypes.Add(dependencyType);
            dependenciesAndAgentsTypes.Add(agentType);
            return dependenciesAndAgentsTypes;
        }

        private List<Action> GetDependenciesActions(GroundedFunctionPredicate totalCostFunctionPredicate, List<Agent> m_agents)
        {
            List<Action> dependenciesActions = new List<Action>();
            dependenciesActions.Add(GetRevealedDependencyParameterizedAction());
            dependenciesActions.AddRange(GetRevealedDummyDependencyActions(m_agents));
            dependenciesActions.Add(GetResetDependenciesRevealedAction(totalCostFunctionPredicate));
            return dependenciesActions;
        }

        private List<Action> GetRevealedDummyDependencyActions(List<Agent> m_agents)
        {
            List<Action> actions = new List<Action>();
            foreach(Agent agent in m_agents)
            {
                int amountOfDependencies = amountOfAgentDependencies[agent];
                if (amountOfDependencies < maxDependenciesOfAgent) //only do this dummy action for agents which don't have the max dependencies amount, so they will not stuck the other agents who want to reveal a dependency...
                    actions.Add(GetRevealedDummyDependencyAction(agent));
            }

            return actions;
        }

        private Action GetRevealedDummyDependencyAction(Agent agent)
        {
            Constant a = mapAgentToConstant[agent];
            Action dummyAction = new Action("reveal-dummy-dependency_" + a.Name);

            CompoundFormula preconditions = new CompoundFormula("and");
            

            GroundedPredicate revealedSomething = new GroundedPredicate("revealed-something");
            revealedSomething.AddConstant(a);

            Predicate notRevealedSomething = revealedSomething.Negate();

            preconditions.AddOperand(notRevealedSomething);
            PredicateFormula effects = new PredicateFormula(revealedSomething);

            foreach (Dependency dependency in agentsDependencies[agent])
            {
                GroundedPredicate revealedDependency = new GroundedPredicate("revealed");
                Constant d = mapDependencyToConstant[dependency];
                revealedDependency.AddConstant(d);

                preconditions.AddOperand(revealedDependency);
            }

            dummyAction.Preconditions = preconditions;
            dummyAction.SetEffects(effects);

            return dummyAction;
        }

        private Action GetResetDependenciesRevealedAction(GroundedFunctionPredicate totalCostFunctionPredicate)
        {
            Action resetDependenciesRevealed = new Action(resetDependenciesActionName);

            CompoundFormula preconditions = new CompoundFormula("and");
            CompoundFormula effects = new CompoundFormula("and");

            foreach(Constant agent in agentsConstants)
            {
                GroundedPredicate revealedSomething = new GroundedPredicate("revealed-something");
                revealedSomething.AddConstant(agent);

                Predicate notRevealedSomething = revealedSomething.Negate();

                preconditions.AddOperand(revealedSomething);
                effects.AddOperand(notRevealedSomething);
            }

            effects.AddOperand(GetIncreaseTotalCostFunction(totalCostFunctionPredicate, revealedDependencyCost));

            resetDependenciesRevealed.Preconditions = preconditions;
            resetDependenciesRevealed.SetEffects(effects);

            return resetDependenciesRevealed;
        }

        private Action GetRevealedDependencyParameterizedAction()
        {
            ParametrizedAction revealDependencyParameterized = new ParametrizedAction("reveal-dependency");
            Parameter agentParameter = GetAgentParameter();
            Parameter dependencyParameter = GetDependencyParameter();
            revealDependencyParameterized.AddParameter(agentParameter);
            revealDependencyParameterized.AddParameter(dependencyParameter);

            CompoundFormula preconditions = new CompoundFormula("and");
            CompoundFormula effects = new CompoundFormula("and");

            ParametrizedPredicate revealedSomething = GetParameterizedRevealedSomething();
            ParametrizedPredicate revealedDependency = GetParameterizedRevealed();
            ParametrizedPredicate belongsTo = GetParameterizedBelongsTo();

            Predicate notRevealedSomething = revealedSomething.Negate();
            Predicate notRevealedDependency = revealedDependency.Negate();

            preconditions.AddOperand(notRevealedSomething);
            preconditions.AddOperand(notRevealedDependency);
            preconditions.AddOperand(belongsTo);

            effects.AddOperand(revealedSomething);
            effects.AddOperand(revealedDependency);

            revealDependencyParameterized.Preconditions = preconditions;
            revealDependencyParameterized.SetEffects(effects);

            return revealDependencyParameterized;
        }

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
            parametrizedPredicates.Add(GetParameterizedRevealedSomething());

            return parametrizedPredicates;
        }

        private ParametrizedPredicate GetParameterizedRevealedSomething()
        {
            ParametrizedPredicate parametrizedRevealedSomething = new ParametrizedPredicate("revealed-something");
            Parameter agentParameter = GetAgentParameter();
            parametrizedRevealedSomething.AddParameter(agentParameter);
            return parametrizedRevealedSomething;
        }

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

        private void InitializeAllDependencies(List<Agent> m_agents, Dictionary<Agent, List<Dependency>> agentsDependencies)
        {
            this.agentsDependencies = agentsDependencies;
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
