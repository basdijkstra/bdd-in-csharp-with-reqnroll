using NUnit.Framework;

namespace BddWithReqnroll.Answers.StepDefinitions
{
    [Binding]
    public sealed class CalculatorStepDefinitions
    {
        private int first;
        private int second;
        private int total;

        [Given("the first number is {int}")]
        public void GivenTheFirstNumberIs(int number)
        {
            first = number;
        }

        [Given("the second number is {int}")]
        public void GivenTheSecondNumberIs(int number)
        {
            second = number;
        }

        [When("the two numbers are added")]
        public void WhenTheTwoNumbersAreAdded()
        {
            total = first + second;
        }

        [Then("the result should be {int}")]
        public void ThenTheResultShouldBe(int result)
        {
            Assert.That(total, Is.EqualTo(result));
        }
    }
}
