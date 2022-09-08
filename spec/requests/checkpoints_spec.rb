require 'rails_helper'

RSpec.describe 'Checkpoints', type: :request do
  let!(:roadmap) { create(:roadmap) }
  describe 'GET /index nested in path' do
    it 'returns http success' do
      get roadmap_checkpoints_path(roadmap)
      expect(response).to have_http_status(:success)
    end
  end

  let!(:checkpoint) { create(:checkpoint) }
  describe 'GET /show' do
    it 'returns http success' do
      get checkpoint_path(checkpoint.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'show checkpoint name' do
    it 'The page must have the path name' do
      get checkpoint_path(checkpoint.id)
      expect(response.body).to include('github')
    end
  end

  describe 'POST /create' do
    let(:name) { 'github' }
    let(:description) { 'this is a nice checkpoint' }

    def execute
      post resource_index_path, params: {
        name:,
        description:
      }
    end

    it do
      expect { execute }.to change { Resource.count }.by(1)
      expect(Resource.last).to have_attributes(
        name:,
        description:
      )
    end

    context 'with missing name param' do
      let(:name) { nil }

      it "doesn't create a new record" do
        expect do
          execute
        rescue StandardError => e
        end.to change { Resource.count }.by(0)
      end
    end
  end
end
