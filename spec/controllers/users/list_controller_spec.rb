require 'rails_helper'

RSpec.describe Users::ListController, type: :controller do
  render_views
  describe 'GET #index' do
    let!(:user1) { create_user('John Smith') }
    let!(:user2) { create_user('Jane Smith') }

    context 'authenticated user' do
      before { sign_in(user1) }

      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
      end

      it 'returns user list content' do
        get :index
        expect(response.body).to match(/John Smith/)
        expect(response.body).to match(/Jane Smith/)
      end
    end

    context 'unauthenticated user' do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:redirect)
      end
    end

    # it 'returns http error for non-existent users' do
    #   get :show, params: { username: 'johnsmith' }
    #   expect(response).to have_http_status(:redirect)
    # end
  end
end
