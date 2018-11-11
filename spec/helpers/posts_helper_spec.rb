require 'rails_helper'

RSpec.describe PostsHelper, type: :helper do
  it 'formats date in ISO format' do
    user = User.create!(name: 'Joe Torreggiani',
                        username: 'jtorreggiani',
                        email: 'joetorreggiani@gmail.com',
                        password: 'password',
                        password_confirmation: 'password')

    date = Date.parse('2020-01-01')

    expect(helper.post_details(user, date)).to eq('Joe Torreggiani | Jan 1')
  end
end
