Feature: Improvements

Let's see what impact using parameterized step definitions,
Scenario Outlines and Backgrounds have on our step definitions

Scenario: Mixing two colours works
	Given we start with an empty bucket of paint
	When we add red paint
	And we add yellow paint
	Then the result is orange paint

Scenario: Mixing two different colours also works
	Given we start with an empty bucket of paint
	When we add blue paint
	And we add yellow paint
	Then the result is green paint

Scenario: Mixing two other colours still works
	Given we start with an empty bucket of paint
	When we add red paint
	And we add blue paint
	Then the result is purple paint
