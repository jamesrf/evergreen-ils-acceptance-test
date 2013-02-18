Feature: More detail option on results

@publiclibrary
Scenario: Harry Potter search more detail
	Given I am on the index page
	When I do a "Keyword" search for "harry potter"
	And I click on "Show More Details"
	Then I should see the extra details
	When I click on "Show Fewer Details"
	Then I should not see the extra details