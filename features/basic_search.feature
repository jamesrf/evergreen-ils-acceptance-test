Feature: Basic Searching

@any
Scenario: Bad search
	Given I am on the index page
	When I do a "Series" search for "lskdwetiuoiquetp"
	Then I should get no results

@publiclibrary
Scenario: Harry Potter search
	Given I am on the index page
	When I do a "Keyword" search for "harry potter"
	Then I should get results containing "Harry Potter"

@publiclibrary
Scenario: Rowling search
	Given I am on the index page
	When I do an "Author" search for "rowling"
	Then I should get results containing "Harry Potter"

@publiclibrary
Scenario: Spain search
	Given I am on the index page
	When I do a "Subject" search for "Spain"
	Then I should get results containing "Spain"

@concertodata
Scenario: Concerto search
	Given I am on the index page
	When I do a "Keyword" search for "concerto"
	Then I should get results containing "concerto"

@concertodata
Scenario: Shostakovich search
	Given I am on the index page
	When I do a "Author" search for "shostakovich"
	Then I should get results containing "Shostakovich"

