require 'rails_helper'

RSpec.describe RoadmapsController, type: :request do
  let!(:roadmap) { create(:roadmap) }

  describe 'GET /show' do
    it 'returns http success' do
      get roadmap_path(roadmap.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'show path name' do
    it 'The page must have the path name' do
      get roadmap_path(roadmap.id)
      expect(response.body).to include('sendero')
    end
  end
end
