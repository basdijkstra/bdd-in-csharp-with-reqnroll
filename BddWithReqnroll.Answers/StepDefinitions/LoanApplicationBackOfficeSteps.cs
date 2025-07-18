using System;
using BddWithReqnroll.Answers.Models;
using Reqnroll;

namespace BddWithReqnroll.Answers.StepDefinitions
{
    [Binding]
    public class LoanApplicationBackOfficeSteps
    {
        private IEnumerable<LoanApplication>? loanApplications;

        [Given(@"the loan application workload contains the following applications:")]
        public void GivenTheLoanApplicationWorkloadContainsTheFollowingApplications(DataTable dataTable)
        {
            /**
             * TODO: Use the Reqnroll table conversion feature to assign the contents
             *   of the DataTable step argument to the `loanApplications` variable defined above.
             */
            loanApplications = dataTable.CreateSet<LoanApplication>();
        }

        [When(@"the loan applications for (.+) are approved")]
        public void WhenTheLoanApplicationsForSusanAreApproved(string applicant)
        {
            foreach (LoanApplication loanApplication in loanApplications!)
            {
                if (loanApplication.Applicant.Equals(applicant))
                {
                    loanApplication.Status = "Approved";
                }
            }
        }

        [Then(@"the loan application workload contains the following applications:")]
        public void ThenTheLoanApplicationWorkloadContainsTheFollowingApplications(DataTable dataTable)
        {
            /**
             * TODO: compare the contents of the DataTable contents with the collection
             *   of loan applications stored in the `loanApplications` variable, using
             *   the Reqnroll table comparison method.
             */
            dataTable.CompareToSet(loanApplications);
        }
    }
}
