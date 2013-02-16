Feature: Numeric Searching

@publiclibrary
Scenario:
	Given I am on the numeric search page
	When I do an "ISBN" search for "0671027360"
	Then I should get results containing "Angels"
	
@concertodata
Scenario:
	Given I am on the numeric search page
	When I do an "ISBN" search for "2130354467"
	Then I should get results containing "Guy Ferchault"
	