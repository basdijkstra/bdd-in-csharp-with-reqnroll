@api
Feature: LoanApplication

  As a loan application evaluator
  I want to only approve loan requests that meet our agreed upon loan amount rules
  So the risk associated with supplying loans remains within regulatory boundaries

  Rule: Loan amount < $1,000 --> approved
  
  Scenario Outline: Loan amounts under 1000 are always approved
	Given John is an active ParaBank customer
	When they apply for a <amount> dollar loan
	Then the loan application is approved
	Examples:
	| amount |
	| 999    |
	| 1      |

#  Rule: Loan amount >= $100,000 --> denied
#  
#  Scenario Outline: Loan amounts greater than or equal to 100000 are always denied
#	Given John is an active ParaBank customer
#	When they apply for a <amount> dollar loan
#	Then the loan application is denied
#	Examples:
#	| amount |
#	| 100000 |
#	| 999999 |
#
#  Rule: $1,000 <= loan amount < $100,000 --> approved when there is proof of monthly income >= $3,000, denied otherwise
#  
#  Scenario Outline: For loan amounts between 1000 and 100000 the result depends on income
#    Given John is an active ParaBank customer
#	And their monthly income is <income>
#	When they apply for a <amount> dollar loan
#	Then the loan application is <result>
#	Examples: 
#	| amount | income | result   |
#	| 1000   | 3000   | approved |
#	| 50000  | 3000   | approved |
#	| 99999  | 3000   | approved |
#	| 1000   | 2999   | denied   |
#	| 50000  | 2999   | denied   |
#	| 99999  | 2999   | denied   |
