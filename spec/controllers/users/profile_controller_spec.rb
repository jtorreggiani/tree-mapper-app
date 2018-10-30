require 'rails_helper'

RSpec.describe Users::ProfileController, type: :controller do
  describe 'GET #index' do
    it 'returns http success for existing users' do
      User.create!(email: 'johnsmith@example.com',
                   password_confirmation: 'password123',
                   password: 'password123',
                   username: 'johnsmith',
                   name: 'John Smith')

      get :show, params: { username: 'johnsmith' }
      expect(response).to have_http_status(:success)
    end

    it 'returns http error for non-existent users' do
      get :show, params: { username: 'johnsmith' }
      expect(response).to have_http_status(:redirect)
    end
  end
end
