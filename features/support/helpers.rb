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

# helper method to create "[UserName] Smith" user
# @api public
# @param name [String] name of user
# @example create_name_smith(name)
# @return [Object] an example user object
def create_user(name)
  name_array = name.split(' ')
  firstname = name_array[0]
  lastname = name_array[1]
  username = "#{firstname.downcase}#{lastname.downcase}"

  User.create!(email: "#{username}@example.com",
               password_confirmation: 'password123',
               password: 'password123',
               username: username,
               name: "#{firstname} #{lastname}")
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
