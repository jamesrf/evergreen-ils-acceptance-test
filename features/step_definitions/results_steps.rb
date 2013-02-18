Then /^I should( not)? see the extra details$/ do |arg1|
  if arg1 == " not" then
    page.should have_no_selector('table.result_holdings_table')
  else
    page.should have_selector('table.result_holdings_table')
  end
end