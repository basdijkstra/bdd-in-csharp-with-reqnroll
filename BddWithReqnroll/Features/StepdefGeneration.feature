Feature: StepdefGeneration

Let's learn how to generate and add step definitions for a new .feature file

Scenario: Generating step definitions
	Given a feature file with steps without step definitions
	When I generate step definitions for the steps
	Then the steps will be implemented by the generated step definitions
