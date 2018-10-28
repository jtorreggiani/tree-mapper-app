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
  User.create!(email: 'johnsmith@example.com',
               password: 'password123',
               password_confirmation: 'password123')
end
