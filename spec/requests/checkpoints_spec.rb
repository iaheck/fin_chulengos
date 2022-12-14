require 'rails_helper'

RSpec.describe 'Checkpoints', type: :request do
  let!(:roadmap) { create(:roadmap) }

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
    let(:roadmaps_ids) { [roadmap.id.to_s] }

    def execute
      post checkpoints_path, params: {
        checkpoint: {
          name:,
          description:
        },
        roadmaps: {
          id: roadmaps_ids
        }
      }
    end

    it 'creates a Checkpoint with expected attributes' do
      expect { execute }.to change { Checkpoint.count }.by(1)
      expect(Checkpoint.last).to have_attributes(
        name:,
        description:
      )
    end

    it 'creates a Checkpoint-Roadmap assosiation with expected attributes' do
      expect { execute }.to change { CheckpointRoadmap.count }.by(1)
      expect(CheckpointRoadmap.last).to have_attributes(
        checkpoint_id: Checkpoint.last.id,
        roadmap_id: roadmap.id
      )
    end

    context 'with missing name param' do
      let(:name) { nil }

      it "doesn't create a new record" do
        expect do
          execute
        rescue StandardError => e
        end.to change { Checkpoint.count }.by(0)
      end
    end

    context 'with missing description param' do
      let(:description) { nil }

      it "doesn't create a new record" do
        expect do
          execute
        rescue StandardError => e
        end.to change { Checkpoint.count }.by(0)
      end
    end
  end
end
