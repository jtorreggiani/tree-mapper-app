require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  render_views
  describe 'GET #index' do
    it 'returns http success' do
      get :index, params: { q: 'qui' }
      expect(response).to have_http_status(:success)
    end

    it 'renders html content' do
      get :index, params: { q: 'qui' }
      expect(response.body).to match('qui est esse dolorem')
    end
  end
end
