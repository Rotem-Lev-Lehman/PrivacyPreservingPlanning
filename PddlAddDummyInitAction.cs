using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Planning
{
    class PddlAddDummyInitAction
    {
        const string agentType = "rotemAgent";
        const string placeHolderType = "rotemPlaceHolder";
        const string dummyInitActionName = "dummy-init-action";
        const string turnToRegularActionsStageActionName = "turn-to-regular-actions-stage";
        const string canUseInitActionGPName = "can-use-init-action";
        const string usedInitActionGPName = "used-init-action";
        const string regularActionStageGPName = "regular-actions-stage";

        public static void AddDummyInitAction(string sourceFolderPath, string destFolderPath)
        {
            Dictionary<int, Tuple<string, string>> agent2domainAndProblem = GetDomainsAndProblems(sourceFolderPath);
            List<int> agents = GetAllAgentNumbers(agent2domainAndProblem);
            List<string> newInit = GetNewInit(agents);
            Directory.CreateDirectory(destFolderPath); //if the folder does not exist, create it.
            foreach (int agent in agents)
            {
                Tuple<string, string> domainAndProblem = agent2domainAndProblem[agent];
                string domain = domainAndProblem.Item1;
                string problem = domainAndProblem.Item2;
                Tuple<string, string, string> objects_prevInit_newProblemText = ReadProblemFile(problem, newInit);
                string objects = objects_prevInit_newProblemText.Item1;
                string prevInit = objects_prevInit_newProblemText.Item2;
                string newProblemText = objects_prevInit_newProblemText.Item3;
                string newDomainText = GetNewDomain(domain, objects, prevInit, agent, agents);

                WriteNewDomain(destFolderPath, newDomainText, agent);
                WriteNewProblem(destFolderPath, newProblemText, agent);
            }
        }

        private static void WriteNewProblem(string destFolderPath, string newProblemText, int agent)
        {
            string filename = destFolderPath + @"\problem-agent" + agent + ".pddl";
            WriteNewPddlFile(filename, newProblemText);
        }

        private static void WriteNewDomain(string destFolderPath, string newDomainText, int agent)
        {
            string filename = destFolderPath + @"\domain-agent" + agent + ".pddl";
            WriteNewPddlFile(filename, newDomainText);
        }

        private static void WriteNewPddlFile(string filename, string newPddlText)
        {
            File.WriteAllText(filename, newPddlText);
        }

        private static List<int> GetAllAgentNumbers(Dictionary<int, Tuple<string, string>> agent2domainAndProblem)
        {
            List<int> agentNumbers = new List<int>(agent2domainAndProblem.Keys);
            return agentNumbers;
        }

        private static string GetNewDomain(string prevDomainPath, string objects, string prevInit, int agentNum, List<int> agents)
        {
            string domain = File.ReadAllText(prevDomainPath);
            domain = AddNewTypes(domain);
            domain = FixConstants(domain, objects, agents);
            domain = FixPredicates(domain);
            string placeHolderGP = GetPlaceHolderGP();
            string sectionBeforeActions = "(:predicates";
            if (domain.Contains("(:functions"))
            {
                //If there are functions in this domain (if it is the Elevators domain), then put the actions after the "functions" section:
                sectionBeforeActions = "(:functions";
            }
            domain = FixRegularActions(domain, placeHolderGP, sectionBeforeActions);
            domain = AddNewActions(domain, prevInit, agentNum, agents, sectionBeforeActions);
            return domain;
        }

        private static string AddNewActions(string domain, string prevInit, int agentNum, List<int> agents, string sectionBeforeActions)
        {
            string newActions = GetNewActions(prevInit, agentNum, agents);
            string updatedDomain = InsertNewSectionAfterSection(domain, newActions, sectionBeforeActions);
            return updatedDomain;
        }

        private static string GetNewActions(string prevInit, int agentNum, List<int> agents)
        {
            string dummyInitAction = GetDummyInitAction(prevInit, agentNum);
            string turnToRegularActionsStage = GetTurnToRegularActionsStageAction(agents);
            string newActions = "\n\n" + dummyInitAction + "\n\n" + turnToRegularActionsStage;
            return newActions;
        }

        private static string GetTurnToRegularActionsStageAction(List<int> agents)
        {
            Tuple<List<string>, List<string>> usedInitActionGPs_and_negations = GetUsedInitActionGPs_and_negations(agents);
            List<string> usedInitActionGPs = usedInitActionGPs_and_negations.Item1;
            List<string> negationUsedInitActionGPs = usedInitActionGPs_and_negations.Item2;
            string regularActionsStageGP = GetPlaceHolderGP();
            negationUsedInitActionGPs.Add(regularActionsStageGP); //this will also go to the effects...

            string actionName = turnToRegularActionsStageActionName;
            string precondition = "\t" + ":precondition" + " (and";
            precondition = AddGPsToSubSection(precondition, usedInitActionGPs);
            precondition += "\n\t" + ")";
            string effect = "\t" + ":effect" + " (and";
            effect = AddGPsToSubSection(effect, negationUsedInitActionGPs);
            effect += "\n\t" + ")";
            string turnToRegularActionsStageAction = ConstractAction(actionName, precondition, effect);
            return turnToRegularActionsStageAction;
        }

        private static string AddGPsToSubSection(string subSection, List<string> GPList)
        {
            foreach(string GP in GPList)
            {
                subSection += "\n\t\t" + GP;
            }
            return subSection;
        }

        private static Tuple<List<string>, List<string>> GetUsedInitActionGPs_and_negations(List<int> agents)
        {
            List<string> usedInitActionGPs = new List<string>();
            List<string> negationUsedInitActionGPs = new List<string>();
            foreach (int agentNum in agents)
            {
                string usedInitActionGP = GetUsedInitAction(agentNum);
                string negationUsedInitActionGP = Negate(usedInitActionGP);
                usedInitActionGPs.Add(usedInitActionGP);
                negationUsedInitActionGPs.Add(negationUsedInitActionGP);
            }
            return new Tuple<List<string>, List<string>>(usedInitActionGPs, negationUsedInitActionGPs);
        }

        private static string GetDummyInitAction(string prevInit, int agentNum)
        {
            string actionName = dummyInitActionName + "-" + agentType + agentNum;
            string canUseInit = GetCanUseInit(agentNum);
            string precondition = "\t" + ":precondition" + " " + canUseInit;
            string effect = "\t" + ":effect" + " (and";
            string notCanUseInit = Negate(canUseInit);
            string usedInitAction = GetUsedInitAction(agentNum);
            effect += "\n\t" + notCanUseInit; 
            effect += "\n\t" + usedInitAction;
            effect += prevInit;
            effect += "\t)";
            string dummyInitAction = ConstractAction(actionName, precondition, effect);
            return dummyInitAction;
        }

        private static string ConstractAction(string actionName, string precondition, string effect)
        {
            string action = "(:action " + actionName + "\n" + precondition + "\n" + effect + "\n" + ")";
            return action;
        }

        private static string GetUsedInitAction(int agentNum)
        {
            string usedInitAction = "(" + usedInitActionGPName + " " + agentType + agentNum + ")";
            return usedInitAction;
        }

        private static string Negate(string GP)
        {
            string negation = "(not " + GP + ")";
            return negation;
        }

        private static string GetCanUseInit(int agentNum)
        {
            string canUseInit = "(" + canUseInitActionGPName + " " + agentType + agentNum + ")";
            return canUseInit;
        }

        private static string FixRegularActions(string domain, string placeHolderGP, string sectionBeforeActions)
        {
            List<string> actions = GetAllActions(domain);
            List<string> fixedActions = new List<string>();
            foreach(string action in actions)
            {
                string fixedAction = FixAction(action, placeHolderGP);
                fixedActions.Add(fixedAction);
            }

            string updatedDomain = SwitchActions(domain, fixedActions, sectionBeforeActions);

            return updatedDomain;
        }

        private static string SwitchActions(string domain, List<string> fixedActions, string sectionBeforeActions)
        {
            string updatedDomain = RemoveActions(domain);
            string allActions = "";
            foreach(string action in fixedActions)
            {
                allActions += "\n\n" + action;
            }
            updatedDomain = InsertNewSectionAfterSection(updatedDomain, allActions, sectionBeforeActions);
            return updatedDomain;
        }

        private static string RemoveActions(string domain)
        {
            string[] split = domain.Split(new string[] { "(:action" }, StringSplitOptions.None);
            string beforeActions = split[0];
            string lastAction = split[split.Length - 1];
            int endOfAction = findEndOfSection(lastAction);
            string afterActions = lastAction.Substring(endOfAction + 1);
            string withoutActions = beforeActions + afterActions;
            return withoutActions;
        }

        private static string FixAction(string action, string placeHolderGP)
        {
            string preconditions = GetPreconditionSection(action);
            if (!preconditions.Contains("(and"))
            {
                preconditions = AddAndToPreconditions(preconditions);
            }
            preconditions = AddGPToPreconditions(preconditions, placeHolderGP);
            string fixedAction = SwitchPreconditionsSection(action, preconditions);
            return fixedAction;
        }

        private static string SwitchPreconditionsSection(string action, string newPreconditions)
        {
            string beforePreconditions = action.Split(new string[] { ":precondition" }, StringSplitOptions.None)[0];
            string afterPreconditions = action.Split(new string[] { ":effect" }, StringSplitOptions.None)[1];
            string newAction = beforePreconditions + ":precondition " + newPreconditions + ":effect" + afterPreconditions;
            return newAction;
        }

        private static string AddGPToPreconditions(string preconditions, string GP)
        {
            string inPreconditions = preconditions.Split(new string[] { "(and" }, StringSplitOptions.None)[1];
            string withGP = "(and" + "\n\t\t" + GP + inPreconditions;
            return withGP;
        }

        private static string AddAndToPreconditions(string preconditions)
        {
            string withAnd = "(and" + preconditions + ")\n\t";
            return withAnd;
        }

        private static string GetPreconditionSection(string action)
        {
            string preconditions = action.Split(new string[] { ":precondition" }, StringSplitOptions.None)[1];
            preconditions = preconditions.Split(new string[] { ":effect" }, StringSplitOptions.None)[0];
            return preconditions;
        }

        private static List<string> GetAllActions(string domain)
        {
            List<string> allActions = new List<string>();
            string[] split = domain.Split(new string[] { "(:action" }, StringSplitOptions.None);
            for(int i = 1; i < split.Length; i++) //start from 1, because the 0 index is for the stuff before the first action...
            {
                string currentAction = split[i];
                int endOfAction = findEndOfSection(currentAction);
                string actionFill = currentAction.Substring(0, endOfAction + 1); // add the last )
                string entireAction = "(:action" + actionFill;
                allActions.Add(entireAction);
            }
            return allActions;
        }

        private static string FixPredicates(string domain)
        {
            string canUseInit = "\n\t" + "(" + canUseInitActionGPName + " ?" + agentType + " - " + agentType + ")";
            string usedInit = "\n\t" + "(" + usedInitActionGPName + " ?" + agentType + " - " + agentType + ")";
            string regularActionsStage = "\n\t" + "(" + regularActionStageGPName + " ?" + placeHolderType + " - " + placeHolderType + ")";
            string addition = canUseInit + usedInit + regularActionsStage;
            string updatedDomain = AddAdditionToSection(domain, "(:predicates", addition);
            return updatedDomain;
        }

        private static string FixConstants(string domain, string objects, List<int> agents)
        {
            if(DomainContainsConstantsSection(domain))
            {
                throw new Exception("The domain already contains a constants section. Need to check this.");
            }
            string constantsSection = "(:constants";
            foreach (int agentNum in agents)
            {
                string currAgentConst = agentType + agentNum + " - " + agentType;
                constantsSection += "\n\t" + currAgentConst;
            }
            string placeHolderConst = placeHolderType + " - " + placeHolderType;
            constantsSection += "\n\t" + placeHolderConst + "\n";
            constantsSection += objects + ")";
            string updatedDomain = InsertNewSectionAfterSection(domain, constantsSection, "(:types");
            return updatedDomain;
        }

        private static string InsertNewSectionAfterSection(string domain, string newSection, string previousSectionName)
        {
            string[] split = domain.Split(new string[] { previousSectionName }, StringSplitOptions.None);
            string section = split[1];
            int endOfSection = findEndOfSection(section);
            string inSection = section.Substring(0, endOfSection + 1); //include the last )
            string afterSection = section.Substring(endOfSection + 1);
            string beforeSection = split[0];
            string withNewSection = beforeSection + previousSectionName + inSection + "\n" + newSection + afterSection;
            return withNewSection;
        }

        private static bool DomainContainsConstantsSection(string domain)
        {
            return domain.Contains("(:constants");
        }

        private static string AddNewTypes(string domain)
        {
            string sectionName = "(:types";
            string agent = "\n\t" + agentType + " - object";
            string placeholder = "\n\t" + placeHolderType + " - object";
            string addition = agent + placeholder;

            string withAddition = AddAdditionToSection(domain, sectionName, addition);
            return withAddition;
        }

        private static string AddAdditionToSection(string domain, string sectionName, string addition)
        {
            string[] split = domain.Split(new string[] { sectionName }, StringSplitOptions.None);
            string section = split[1];
            string beforeSection = split[0];
            string withAddition = beforeSection + sectionName + addition + section;
            return withAddition;
        }

        private static string GetPlaceHolderGP()
        {
            return "(" + regularActionStageGPName + " " + placeHolderType + ")";
        }

        private static List<string> GetNewInit(List<int> agents)
        {
            List<string> newInit = new List<string>();
            foreach(int agentNum in agents)
            {
                string canUseInit = "(" + canUseInitActionGPName + " " + agentType + agentNum + ")";
                newInit.Add(canUseInit);
            }
            return newInit;
        }

        private static Tuple<string, string, string> ReadProblemFile(string problem, List<string> newInit)
        {
            string objects = null;
            string prevInit = null;
            string newProblemText = null;
            string allText = File.ReadAllText(problem);
            objects = GetObjectsSection(allText);
            Tuple<string, string> prevInit_functionsInit = GetInitSection(allText);
            prevInit = prevInit_functionsInit.Item1;
            newProblemText = GetNewProblemText(allText, newInit, prevInit_functionsInit.Item2);

            return new Tuple<string, string, string>(objects, prevInit, newProblemText);
        }

        private static string GetNewProblemText(string allText, List<string> newInit, string functionsInit)
        {
            string withoutObjectsAndInit = ClearObjectsAndInitSections(allText);
            string newProblemText = InsertNewInit(withoutObjectsAndInit, newInit, functionsInit);
            return newProblemText;
        }

        private static string InsertNewInit(string withoutObjectsAndInit, List<string> newInit, string functionsInit)
        {
            string newInitStr = "";
            foreach(string gp in newInit)
            {
                newInitStr += "\n\t" + gp;
            }
            string[] split = withoutObjectsAndInit.Split(new string[] { "(:init" }, StringSplitOptions.None);
            string newText = split[0] + "(:init" + newInitStr;
            if (functionsInit != null)
            {
                newText += "\n" + functionsInit;
            }
            newText += split[1];
            return newText;
        }

        private static string ClearObjectsAndInitSections(string allText)
        {
            string withoutObjects = ClearObjectsSection(allText);
            string withoutObjectsAndInit = ClearInitSection(withoutObjects);
            return withoutObjectsAndInit;
        }

        private static string ClearInitSection(string text)
        {
            return ClearSection(text, "(:init");
        }

        private static string ClearObjectsSection(string text)
        {
            return ClearSection(text, "(:objects");
        }

        private static string ClearSection(string text, string sectionName)
        {
            string[] split = text.Split(new string[] { sectionName }, StringSplitOptions.None);
            string section = split[1];
            int endOfSection = findEndOfSection(section);
            string beforeSection = split[0];
            string afterSection = section.Substring(endOfSection);
            string clearedSection = beforeSection + sectionName + "\n" + afterSection;
            return clearedSection;
        }

        private static Tuple<string, string> GetInitSection(string allText)
        {
            string init = GetSection(allText, "(:init");
            string functions = null;
            if (init.Contains("(="))
            {
                //This problem contains functions. The function's initialization must remain in the init of the problem.
                string[] splitInit = init.Split(new string[] { "(=" }, StringSplitOptions.None);
                init = splitInit[0];
                functions = "\t";
                for(int i = 1; i < splitInit.Length; i++)
                {
                    functions += "(=" + splitInit[i];   
                }
            }
            return new Tuple<string, string>(init, functions);
        }

        private static string GetObjectsSection(string allText)
        {
            string objects = GetSection(allText, "(:objects");
            return objects;
        }

        private static string GetSection(string allText, string sectionName)
        {
            string section = allText.Split(new string[] { sectionName }, StringSplitOptions.None)[1];
            int endOfSection = findEndOfSection(section);
            section = section.Substring(0, endOfSection);
            return section;
        }

        private static int findEndOfSection(string section)
        {
            int amountOfBrackets = 0;
            int endOfSection = -1;
            for (int i = 0; i < section.Length; i++)
            {
                if (section[i] == '(')
                {
                    amountOfBrackets++;
                }
                else if (section[i] == ')')
                {
                    if (amountOfBrackets == 0)
                    {
                        //done:
                        endOfSection = i;
                        break;
                    }
                    amountOfBrackets--;
                }
            }
            return endOfSection;
        }

        private static Dictionary<int, Tuple<string, string>> GetDomainsAndProblems(string sourceFolderPath)
        {
            List<string> domains = new List<string>();
            List<string> problems = new List<string>();

            foreach (string file in Directory.EnumerateFiles(sourceFolderPath, "*.pddl"))
            {
                string fileName = GetOnlyTheFileName(file);
                if (fileName.Contains("domain"))
                {
                    domains.Add(file);
                }
                else if (fileName.Contains("problem"))
                {
                    problems.Add(file);
                }
                else
                {
                    throw new Exception("Each file must be a domain or a problem.");
                }
            }
            Dictionary<int, Tuple<string, string>> agent2domainAndProblem = new Dictionary<int, Tuple<string, string>>();
            for(int i = 0; i < domains.Count; i++)
            {
                string domainFile = domains[i];
                string agentName = GetAgentName(domainFile);
                bool found = false;
                string correspondingProblemFile = null;
                for (int j = 0; j < problems.Count && !found; j++)
                {
                    string problemFile = problems[i];
                    string problemAgentName = GetAgentName(problemFile);
                    if (agentName == problemAgentName)
                    {
                        found = true;
                        correspondingProblemFile = problemFile;
                    }
                }
                if (found)
                {
                    agent2domainAndProblem[i] = new Tuple<string, string>(domainFile, correspondingProblemFile);
                }
                else
                {
                    throw new Exception("There must be a problem file for each domain file.");
                }
            }
            return agent2domainAndProblem;
        }

        private static string GetOnlyTheFileName(string fullPath)
        {
            string[] fileNameSplit = fullPath.Split('\\');
            return fileNameSplit[fileNameSplit.Length - 1];
        }

        private static string GetAgentName(string pddlFile)
        {
            string fileName = GetOnlyTheFileName(pddlFile);
            string agentName = fileName.Split('-')[1].Split('.')[0];
            return agentName;
        }
    }
}
