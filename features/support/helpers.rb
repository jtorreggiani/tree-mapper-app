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

# helper method to create an example post with specic title
# @api public
# @param title [String] title of post
# @example create_example_post(title)
# @return [Object] an example post record
def create_example_post(title)
  Post.create!(title: title, body: post_text)
end

def post_text
  <<~POST_TEXT
    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
    totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui
    ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
    velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
    Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
    consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur,
    vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
  POST_TEXT
end

# helper method to sign in users during tests
# @api public
# @param full_name [String] full name of user
# @example sign_in_user(name)
# @return [nil]
def sign_in_user(full_name)
  user = User.where(name: full_name).first
  visit '/sign_in'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: 'password123'
  click_button 'Log in'
end

def create_fake_posts(number)
  number.to_i.times do
    Post.create!(title: Faker::Lorem.sentence,
                 body: Faker::Lorem.paragraphs(2))
  end
end
