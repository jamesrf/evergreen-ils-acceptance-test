Given /^I am on the index page$/ do
  visit('/')
end

Given /^I am on the home page$/ do
  visit('/eg/opac/home')
end

Given /^I am on the advanced search page$/ do
  visit('/')
  click_on('Advanced Search')
end

Given /^I am on the numeric search page$/ do
  visit('/')
  click_on('Advanced Search')
  click_on('Numeric Search')
end

Given /^I am on the expert search page$/ do
  visit('/')
  click_on('Advanced Search')
  click_on('Expert Search')
end


When /^I click on "(.*?)"$/ do |arg1|
  click_on(arg1)
end
