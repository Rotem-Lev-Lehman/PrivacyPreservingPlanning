using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Planning.AdvandcedProjectionActionSelection.DependenciesGraphGeneration
{
    class DependenciesGraphGenerator
    {
        // This class is for creating the graph that we have published in the paper for every problem given.
        // The generated graph will help us later to analyze differences between the different domains and problems.

        public static void GenerateDependenciesGraph(List<Agent> m_agents, string outputFolderPath)
        {
            // Generate the dependencies graph for the given problem.
            // The generated graphs will be saved into the outputFolderPath given.
            // There will be a seperate graph for each agent given in the m_agents list.
            // The format of the generated graph will be 3 csv files.
            // The files are:
            // 1. layer1_edges.csv - the edges between public actions to their artificial effects(*).
            // 2. layer2_edges.csv - the edges between artificial effects(*) to the public actions they are preconditions of.
            // 3. layer3_edges.csv - the edges between public actions to their public effects.
            // * The effects will have their meaningful name.

            Dictionary<Agent, List<Action>> agentsProjections = GetAgentsProjections(m_agents);
            foreach (Agent agent in m_agents)
            {
                string agentFolderPath = outputFolderPath + @"\agent_" + agent.getID();
                Directory.CreateDirectory(agentFolderPath); // creates all directories in path if they do not exist.
                SaveDependenciesGraph(agent, agentsProjections[agent], agentFolderPath);
            }
        }

        private static void SaveDependenciesGraph(Agent agent, List<Action> projectionActions, string agentFolderPath)
        {
            string layer1FilePath = agentFolderPath + @"\layer1_edges.csv";
            string layer2FilePath = agentFolderPath + @"\layer2_edges.csv";
            string layer3FilePath = agentFolderPath + @"\layer3_edges.csv";

            SaveLayer1Edges(agent, projectionActions, layer1FilePath);
            SaveLayer2Edges(agent, projectionActions, layer2FilePath);
            SaveLayer3Edges(projectionActions, layer3FilePath);
        }

        private static void SaveLayer1Edges(Agent agent, List<Action> projectionActions, string layer1FilePath)
        {
            // The edges between public actions to their artificial effects(*).
            // * The effects will have their meaningful name.
            List<Tuple<string, string>> edges = GetEffectsWeCanReveal(agent, projectionActions);
            SaveEdgesToFile(edges, layer1FilePath);
        }

        private static void SaveLayer2Edges(Agent agent, List<Action> projectionActions, string layer2FilePath)
        {
            // The edges between artificial effects(*) to the public actions they are preconditions of.
            // * The effects will have their meaningful name.
            List<Tuple<string, string>> edges = GetPreconditionsToActions(agent, projectionActions);
            SaveEdgesToFile(edges, layer2FilePath);
        }

        private static void SaveLayer3Edges(List<Action> projectionActions, string layer3FilePath)
        {
            // The edges between public actions to their public effects.
            List<Tuple<string, string>> edges = GetActionsPublicEffects(projectionActions);
            SaveEdgesToFile(edges, layer3FilePath);
        }

        private static void SaveEdgesToFile(List<Tuple<string, string>> edges, string edgesFilePath)
        {
            using (StreamWriter file = new StreamWriter(edgesFilePath))
            {
                foreach (Tuple<string, string> edge in edges)
                {
                    file.WriteLine(edge.Item1 + "," + edge.Item2);
                }
            }
        }

        private static Dictionary<Agent, List<Action>> GetAgentsProjections(List<Agent> m_agents)
        {
            List<Predicate> predicates = new List<Predicate>();
            int index = 0;
            Dictionary<Agent, List<Action>> agentsProjections = new Dictionary<Agent, List<Action>>();
            foreach (Agent agent in m_agents)
            {
                List<Action> currentlProjAction = agent.getAdvancedProjectionPublicAction(index, predicates);
                agentsProjections.Add(agent, currentlProjAction);

                foreach (Action act in currentlProjAction)
                {
                    act.agent = agent.name;
                }
                index += 1000;
            }
            return agentsProjections;
        }

        private static List<Tuple<string, string>> GetEffectsWeCanReveal(Agent agent, List<Action> possibleActions)
        {
            List<Tuple<string, string>> effectsWeCanReveal = new List<Tuple<string, string>>();
            foreach (Action action in possibleActions)
            {
                string actionName = action.Name;
                List<Predicate> currEffects = action.HashEffects;
                foreach (Predicate p in currEffects)
                {
                    if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //it is an artificial predicate
                        string effectName = GetArtificialPredicateRealName(agent, p);
                        effectsWeCanReveal.Add(new Tuple<string, string>(actionName, effectName));
                    }
                }
            }
            return effectsWeCanReveal;
        }

        private static List<Tuple<string, string>> GetPreconditionsToActions(Agent agent, List<Action> possibleActions)
        {
            List<Tuple<string, string>> preconditionsAndActions = new List<Tuple<string, string>>();
            foreach (Action action in possibleActions)
            {
                string actionName = action.Name;
                List<Predicate> currPreconditions = action.HashPrecondition;
                foreach (Predicate p in currPreconditions)
                {
                    if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //it is an artificial predicate
                        string preconditionName = GetArtificialPredicateRealName(agent, p);
                        preconditionsAndActions.Add(new Tuple<string, string>(preconditionName, actionName));
                    }
                }
            }
            return preconditionsAndActions;
        }

        private static List<Tuple<string, string>> GetActionsPublicEffects(List<Action> possibleActions)
        {
            List<Tuple<string, string>> actionsPublicEffects = new List<Tuple<string, string>>();
            foreach (Action action in possibleActions)
            {
                string actionName = action.Name;
                List<Predicate> currEffects = action.HashEffects;
                foreach (Predicate p in currEffects)
                {
                    if (!p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //it is not an artificial predicate (it is a public predicate)
                        string effectName = p.ToString();
                        actionsPublicEffects.Add(new Tuple<string, string>(actionName, effectName));
                    }
                }
            }
            return actionsPublicEffects;
        }

        private static string GetArtificialPredicateRealName(Agent agent, Predicate p)
        {
            Predicate predicate;
            bool negation = false;
            if (p.Negation)
            {
                //if it is a "not Predicate"
                predicate = p.Negate();
                negation = true;
            }
            else
            {
                predicate = p;
            }
            Predicate privatePredicate = agent.ArtificialToPrivate[(GroundedPredicate)predicate];
            if (negation)
            {
                privatePredicate = privatePredicate.Negate();
            }
            return privatePredicate.ToString();
        }
    }
}
