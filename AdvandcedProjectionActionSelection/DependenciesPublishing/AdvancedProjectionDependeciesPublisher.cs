using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Planning
{
    class AdvancedProjectionDependeciesPublisher : AAdvancedProjectionActionPublisher
    {
        IAdvancedProjectionDependeciesSelector dependeciesSelector;
        public AdvancedProjectionDependeciesPublisher(IAdvancedProjectionDependeciesSelector dependeciesSelector, double percentageOfActionsSelected) : base(percentageOfActionsSelected)
        {
            this.dependeciesSelector = dependeciesSelector;
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
    }
}
