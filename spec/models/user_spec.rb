require 'rails_helper'

RSpec.describe User, type: :model do
  it 'responds email and password' do
    user = User.new
    expect(user.email).to eq('')
    expect(user.password).to be_nil
  end

  it 'responds name and username' do
    user = User.new
    expect(user.name).to be_nil
    expect(user.username).to be_nil
  end

  it 'is valid with an email and a password' do
    user = User.new(email: 'joetorreggiani@gmail.com',
                    password: 'password123')

    expect(user).to be_valid
  end
end
