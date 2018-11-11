When(/^I click on the alert button$/) do
  click_button('Display Alert')
end

When(/^I click the "(.*?)" button$/) do |selector|
  click_button(selector)
end

Then(/^I should see the text "(.*?)"$/) do |text|
  expect(page).to have_content(/#{text}/i)
end

Then(/^I should not see the text "(.*?)"$/) do |text|
  expect(page).to_not have_content(/#{text}/i)
end

Then(/^I should see an alert with the text "(.*?)"$/) do |text|
  expect(page.driver.browser.switch_to.alert.text).to eq(text)
end

Then(/^I accept the alert$/) do
  page.driver.browser.switch_to.alert.accept
end

When(/^I should not see the alert$/) do
  expect(alert_present?).to be_falsey
end

When(/^I fill in the "(.*?)" field with "(.*?)"$/) do |label, input|
  fill_in(label, with: input)
end

Given(/^the user "(.*?)" exists$/) do |name|
  create_user(name)
end

And(/a post with the title of "(.*?)" (?:exists|was created)$/) do |title|
  create_example_post(title)
end

And(/^I am signed in as "(.*?)"$/) do |name|
  sign_in_user(name)
end

Given(/^I (?:am on|visit) the "(.*?)" page$/) do |page_name_text|
  page_name = page_name_text.downcase.split(' ').join('_')
  visit("/#{page_name}")
end

And(/^there are "(.*?)" (?:other|newer) "(.*?)"$/) do |number, model_name|
  case model_name.singularize.downcase
  when 'post'
    create_fake_posts(number)
  end
end
