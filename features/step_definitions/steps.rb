Given /^I visit the ([\w\s]+)$/ do |page|  
  paths = {
    'homepage' => root_url
  }
  visit paths[page]
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end