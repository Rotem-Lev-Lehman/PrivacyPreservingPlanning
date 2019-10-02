using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionDependeciesPublisher : AAdvancedProjectionActionPublisher
    {
        AAdvancedProjectionDependenciesSelector dependeciesSelector;
        private Dictionary<Agent, string> recordingDependencyPickingPerAgent;
        private string recordingDependencyPickingAllTogether;
        private Dictionary<Agent, int> currentDependencyRecordNumberPerAgent;
        private int currentDependencyRecordNumber;
        private static string togetherHeader = "Record number,Agent's name,Agent's record number,Action,Effect\n";
        private static string agentHeader = "Record number,Action,Effect\n";

        public AdvancedProjectionDependeciesPublisher(AAdvancedProjectionDependenciesSelector dependeciesSelector, double percentageOfActionsSelected, Dictionary<Agent, string> recordingDependencyPickingPerAgent, string recordingDependencyPickingAllTogether) : base(percentageOfActionsSelected)
        {
            this.dependeciesSelector = dependeciesSelector;
            this.dependeciesSelector.SetPublisher(this);

            //recording:
            this.recordingDependencyPickingPerAgent = recordingDependencyPickingPerAgent;
            this.recordingDependencyPickingAllTogether = recordingDependencyPickingAllTogether;
            this.currentDependencyRecordNumberPerAgent = new Dictionary<Agent, int>();
            foreach(Agent agent in this.recordingDependencyPickingPerAgent.Keys)
            {
                this.currentDependencyRecordNumberPerAgent.Add(agent, 0);
            }
            this.currentDependencyRecordNumber = 0;
        }

        public override void publishActions(List<Action> allProjectionAction, Dictionary<Agent, List<Action>> agentsProjections)
        {
            foreach (Agent agent in agents)
            {
                List<Action> currentlProjAction = agentsProjections[agent];

                List<Tuple<Action, Predicate>> effectsWeCanReveal = new List<Tuple<Action, Predicate>>();
                InitializeEffectsWeCanReveal(currentlProjAction, effectsWeCanReveal);

                dependeciesSelector.SelectDependencies(currentlProjAction, effectsWeCanReveal, percentageToSelected, agent);
                //now we have selected the dependencies we want
                //we are now adding the actions to the projection:
                allProjectionAction.AddRange(currentlProjAction);

                foreach (Action act in currentlProjAction)
                {
                    act.agent = agent.name;
                }
            }
        }

        private void InitializeEffectsWeCanReveal(List<Action> possibleActions, List<Tuple<Action, Predicate>> effectsWeCanReveal)
        {
            foreach (Action action in possibleActions)
            {
                List<Predicate> currEffects = action.HashEffects;
                List<Predicate> artificialEffects = new List<Predicate>();
                List<Predicate> nonArtificialEffects = new List<Predicate>();
                foreach (Predicate p in currEffects)
                {
                    if (p.Name.Contains(Domain.ARTIFICIAL_PREDICATE))
                    {
                        //it is an artificial predicate
                        artificialEffects.Add(p);
                        effectsWeCanReveal.Add(new Tuple<Action, Predicate>(action, p));
                    }
                    else
                    {
                        nonArtificialEffects.Add(p);
                    }
                }
                CompoundFormula newEffects = new CompoundFormula("and");
                foreach (Predicate p in nonArtificialEffects)
                {
                    newEffects.AddOperand(p);
                }

                action.Effects = newEffects;
                action.HashEffects = nonArtificialEffects;
            }
        }

        public void RecordDependencyPicked(Agent agent, Tuple<Action, Predicate> chosen)
        {
            //The stuff to record:
            string actionChosen = chosen.Item1.Name;
            Predicate predicate;
            bool negation = false;
            if (chosen.Item2.Negation)
            {
                //if it is a "not Predicate"
                predicate = chosen.Item2.Negate();
                negation = true;
            }
            else
            {
                predicate = chosen.Item2;
            }
            Predicate privatePredicate = agent.ArtificialToPrivate[(GroundedPredicate)predicate];
            if (negation)
            {
                privatePredicate = privatePredicate.Negate();
            }
            string effectChosen = privatePredicate.ToString();

            //Record to the agent's file:
            string agentFilename = recordingDependencyPickingPerAgent[agent];
            int agentRecordNumber = currentDependencyRecordNumberPerAgent[agent];
            string agentData = agentRecordNumber + "," + actionChosen + "," + effectChosen + "\n";
            AppendOrCreateFile(agentFilename, agentHeader, agentData);

            //Record to the all together file:
            string togetherData = currentDependencyRecordNumber + "," + Program.ConvertAgentNameToItsUsableName(agent) + "," + agentRecordNumber + "," + actionChosen + "," + effectChosen + "\n";
            AppendOrCreateFile(recordingDependencyPickingAllTogether, togetherHeader, togetherData);

            //Increase counters:
            currentDependencyRecordNumberPerAgent[agent]++;
            currentDependencyRecordNumber++;
        }

        private void AppendOrCreateFile(string filename, string headerLine, string data)
        {
            if (!File.Exists(filename))
            {
                //if the file doesn't exist yet, create it and write the header to it:
                File.WriteAllText(filename, headerLine);
            }
            //write the data to the file:
            File.AppendAllText(filename, data);
        }
    }
}
