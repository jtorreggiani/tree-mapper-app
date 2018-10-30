When(/^I click on the alert button$/) do
  click_button('Display Alert')
end

When(/^I click the "(.*?)" button$/) do |selector|
  click_button(selector)
end

Then(/^I see the text "(.*?)"$/) do |text|
  expect(page).to have_content(/#{text}/i)
end

Then(/^I see an alert with the text "(.*?)"$/) do |text|
  expect(page.driver.browser.switch_to.alert.text).to eq(text)
end

Then(/^I accept the alert$/) do
  page.driver.browser.switch_to.alert.accept
end

When(/^I do not see the alert$/) do
  expect(alert_present?).to be_falsey
end

When(/^I fill in the "(.*?)" field with "(.*?)"$/) do |label, input|
  fill_in(label, with: input)
end

Given(/^I am an existing user named John Smith$/) do
  create_john_smith
end

Given(/^the user John Smith exists$/) do
  create_john_smith
end

And(/^I am signed in as John Smith$/) do
  user = create_john_smith
  sign_in_user(user)
end

Given(/^I am on the "(.*?)" page$/) do |page|
  page_name = page.downcase.split(' ').join('_')
  visit("/#{page_name}")
end
