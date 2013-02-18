@any
Feature: Expert Searching

Scenario: Add and remove rows
	Given I am on the expert search page
	When I click add row 3 times
	And I click the x beside an expert search row
	Then I should see 3 expert search rows

Scenario: Publisher search
	Given I am on the expert search page
	When I search MARC tag "260" subfield "b" for "University of Chicago Press"
	Then I should get results


# Should test adding multiple rows and searching as well