Given /^I am on the homepage$/ do
  visit root_url
end

Then /^I should see the address$/ do
  page.should have_content 'Banaswadi'
end