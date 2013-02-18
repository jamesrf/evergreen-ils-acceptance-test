# BASIC SEARCH

When /^I do an? "(.*?)" search for "(.*?)"$/ do |searchtype, searchterm|
  select(searchtype, :from => 'qtype')
  fill_in 'query', :with => searchterm
  click_button('Search')
end

# RESULTS VERIFICATION

Then /^I should get results$/ do
  # former means multiple results, latter is just one result
  page.has_selector?('table tr#result_table_row') or page.has_selector?('div.rdetail_summary_header')
end

Then /^I should get results containing "(.*?)"$/ do |resultcontent|
  # former means multiple results, latter is just one result
  page.has_selector?('table tr#result_table_row') or page.has_selector?('div.rdetail_summary_header')
  page.should have_content resultcontent
end

Then /^I should get no results$/ do
  page.has_selector?('div.zero_search_hits')
end



