Given(/^I am on the welcome page$/) do
  visit('/')
end

Then(/^I should see the current date$/) do
  page.has_content?(Date.today.strftime('%Y-%m-%d'))
end
