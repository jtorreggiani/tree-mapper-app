require "pry"

When(/^I click on the alert button$/) do
  click_button('Display Alert')
end

Then(/^I see the alert$/) do
  expect(page.driver.browser.switch_to.alert.text).to eq('Example Alert')
end

Then(/^I click the ok button$/) do
  page.driver.browser.switch_to.alert.accept
end

When(/^I do not see the alert$/) do
  expect(alert_present?).to be_falsey
end
