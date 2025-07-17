Feature: Improvements

Let's see what impact using Scenario Outlines and Backgrounds have on our step definitions

    Background:
	    Given we start with an empty bucket of paint

	Scenario Outline: Mixing colors
	    When we add <firstColour> paint
		And we add <secondColour> paint
		Then the result is <resultingColour> paint
		Examples:
		| firstColour | secondColour | resultingColour |
		| red         | yellow       | orange          |
		| blue        | yellow       | green           |
		| red         | blue         | purple          |

