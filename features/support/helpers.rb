# helper method to check if alert is present
# @api public
# @example alert_present?
# @return [Boolean]
def alert_present?
  page.driver.browser.switch_to.alert
  true
rescue # rubocop:disable Style/RescueStandardError
  false
end

# helper method to create "John Smith" user
# @api public
# @example create_john_smith
# @return [Object] example user object
def create_john_smith
  User.create!(email: 'johnsmith@example.com',
               password_confirmation: 'password123',
               password: 'password123',
               username: 'johnsmith',
               name: 'John Smith')
end

# helper method to sign in users during tests
# @api public
# @example sign_in_user(user)
# @return [nil]
def sign_in_user(user)
  visit '/users/sign_in'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: 'password123'
  click_button 'Log in'
end
