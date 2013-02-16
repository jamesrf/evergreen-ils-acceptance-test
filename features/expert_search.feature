@any
Feature: Expert Searching

Secenario: Add row
	Given I am on the expert search page
	When I click add row
	Then a new row should appear

Scenario: Publisher search
	Given I am on the expert search page
	When I search MARC tag "260" subfield "b" for "University of Chicago Press"
	Then I should get results