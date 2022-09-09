require 'rails_helper'

RSpec.describe 'Logins', type: :request do
  let!(:user) { create(:user) }
  before do
    sign_in user
  end
  describe 'GET /index' do
    it 'returns http success' do
      get '/login/index'
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_path)
    end
  end
end
