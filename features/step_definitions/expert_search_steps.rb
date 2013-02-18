# EXPERT SEARCH ROW ADDING/REMOVING TEST
When /^I click add row (\d{1,}) times?$/ do |num|
  num.to_i.times do |x|
    click_on('[ Add row ]')
  end
end

When /^I click the x beside an expert search row$/ do
  first(:xpath, "//a/img[@alt='Remove row']/..").click
end

Then /^I should see (\d{1,}) expert search rows$/ do | num |
  page.should have_css("tbody#adv_expert_rows_here tr", :count => num )
end


When /^I search MARC tag "(.*?)" subfield "(.*?)" for "(.*?)"$/ do |tag,subfield,term|
  fill_in 'tag', :with => tag
  fill_in 'subfield', :with => subfield
  fill_in 'term', :with => term
  click_button('Search')
end
