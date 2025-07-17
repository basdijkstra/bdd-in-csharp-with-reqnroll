using System;
using Reqnroll;

namespace BddWithReqnroll.Answers.StepDefinitions
{
    [Binding]
    public class ImprovementsSteps
    {
        [Given("we start with an empty bucket of paint")]
        public void GivenWeStartWithAnEmptyBucketOfPaint()
        {
        }

        [When("we add {word} paint")]
        public void WhenWeAddPaint(string originalColor)
        {
        }

        [Then(@"^the result is (orange|green|purple) paint$")]
        public void ThenTheResultIsOrangePaint(string resultColor)
        {
        }
    }
}
