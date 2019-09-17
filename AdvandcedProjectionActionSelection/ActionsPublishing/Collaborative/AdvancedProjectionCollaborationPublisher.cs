using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionCollaborationPublisher : AAdvancedProjectionActionPublisher
    {
        private IAdvancedProjectionCollaborativeActionsSelector actionsSelector;
        private Random rnd;

        public AdvancedProjectionCollaborationPublisher(IAdvancedProjectionCollaborativeActionsSelector actionsSelector, double percentageOfActionsSelected) : base(percentageOfActionsSelected)
        {
            this.actionsSelector = actionsSelector;
            this.rnd = new Random();
        }

        public override void publishActions(List<Action> allProjectionAction, Dictionary<Agent, List<Action>> agentsProjections)
        {
            //check if it is a legal operation
            if (percentageToSelected > 1 || percentageToSelected < 0)
            {
                throw new NotSupportedException("The percentage must be between 0 to 1");
            }

            List<Action> selected = new List<Action>();
            Dictionary<Agent, List<Action>> needToUpdateSelectedForAgent = new Dictionary<Agent, List<Action>>();
            Dictionary<Agent, Dictionary<Action, List<Predicate>>> possibleActions_effects = new Dictionary<Agent, Dictionary<Action, List<Predicate>>>();
            Dictionary<Agent, Dictionary<Action, List<Predicate>>> possibleActions_preconditions = new Dictionary<Agent, Dictionary<Action, List<Predicate>>>();

            Dictionary<Agent, int> remainingAmountToSelectForAgent = new Dictionary<Agent, int>();
            int totalAmountToSelect = 0;

            HashSet<GroundedPredicate> publicStartState = new HashSet<GroundedPredicate>();
            foreach (Agent agent in agents)
            {
                publicStartState.UnionWith(agent.GetPublicStartState());
            }

            foreach (Agent agent in agents)
            {
                List<Action> currentlProjAction = agentsProjections[agent];
                //select the amount of needed actions
                int amountToSelect = (int)(percentageToSelected * currentlProjAction.Count);
                remainingAmountToSelectForAgent.Add(agent, amountToSelect);

                totalAmountToSelect += amountToSelect;

                needToUpdateSelectedForAgent.Add(agent, new List<Action>()); //init

                Dictionary<Action, List<Predicate>> effects = new Dictionary<Action, List<Predicate>>();
                Dictionary<Action, List<Predicate>> preconditions = new Dictionary<Action, List<Predicate>>();
                foreach (Action action in currentlProjAction)
                {
                    List<Predicate> curr_effects = new List<Predicate>(action.HashEffects);
                    List<Predicate> curr_preconditions = new List<Predicate>(action.HashPrecondition);
                    foreach (Predicate p in publicStartState) // remove the start state predicates, because we already know them...
                    {
                        bool success = curr_preconditions.Remove(p);
                        success = curr_effects.Remove(p);
                    }
                    preconditions.Add(action, curr_preconditions);
                    effects.Add(action, curr_effects);
                }
                possibleActions_effects.Add(agent, effects);
                possibleActions_preconditions.Add(agent, preconditions);
            }

            while (totalAmountToSelect > 0)
            {
                //Select the next agent that needs to publish an action.
                Agent agent = chooseNextAgent(remainingAmountToSelectForAgent, totalAmountToSelect);

                Dictionary<Action, List<Predicate>> effects = possibleActions_effects[agent];
                Dictionary<Action, List<Predicate>> preconditions = possibleActions_preconditions[agent];

                //List<Action> possibleActions = agentsProjections[agent];
                List<Action> mySelectedNeededToUpdate = needToUpdateSelectedForAgent[agent];
                //Select the next action for this agent, by the selection metodology. it will also remove the action from the list.
                Action chosen = actionsSelector.selectNextAction(effects, preconditions, mySelectedNeededToUpdate, agent);
                needToUpdateSelectedForAgent[agent] = new List<Action>(); //updated in the actionSelector, so it has no need of those anymore

                chosen.agent = agent.name;

                selected.Add(chosen);

                foreach (Agent other in agents)
                {
                    List<Action> othersList = needToUpdateSelectedForAgent[other];
                    othersList.Add(chosen);
                }

                remainingAmountToSelectForAgent[agent] = remainingAmountToSelectForAgent[agent] - 1;
                totalAmountToSelect--;
            }

            allProjectionAction.AddRange(selected);
        }

        private Agent chooseNextAgent(Dictionary<Agent, int> remainingAmountToSelectForAgent, int totalAmountToSelect)
        {
            //return chooseNextAgentWeightedRandomly(remainingAmountToSelectForAgent, totalAmountToSelect);
            return chooseNextAgentByOrderOfAgents(remainingAmountToSelectForAgent, totalAmountToSelect);
        }

        private Agent chooseNextAgentByOrderOfAgents(Dictionary<Agent, int> remainingAmountToSelectForAgent, int totalAmountToSelect)
        {
            //select the next agent that has something to publish
            foreach(Agent agent in agents)
            {
                if (remainingAmountToSelectForAgent[agent] > 0)
                    return agent;
            }

            //Not supposed to get here...
            throw new NotSupportedException("Need to fix it, it should not get here...");
        }

        private Agent chooseNextAgentWeightedRandomly(Dictionary<Agent, int> remainingAmountToSelectForAgent, int totalAmountToSelect)
        {
            //Select it randomly, give more chance for agents with larger "dept".
            //if one has 400 actions left to select, and the other has only 2 left to select,
            //it will most likely be the first one that will be chosen.
            double randNum = rnd.Next(totalAmountToSelect);
            int index = 0;
            foreach (Agent agent in agents)
            {
                index += remainingAmountToSelectForAgent[agent];
                if (index > randNum)
                    return agent;
            }

            //Not supposed to get here...
            throw new NotSupportedException("Need to fix it, it should not get here...");
        }
    }
}
