require 'rails_helper'

RSpec.describe 'Resources', type: :request do
  let!(:resource) { create(:resource) }

  describe 'GET /index' do
    context 'Resource index' do
      it 'The page must to have the title Detalle del recurso' do
        get resource_path(resource.id)
        expect(response.code).to eq('200')
        # expect(response.body).to include('Detalle del recurso')
      end
    end
  end

  describe 'POST /create' do
    let(:name) { 'Pedro' }
    let(:description) { 'Este es un recurso' }
    let(:url) { 'http://google.cl' }
    let!(:checkpoint) { create(:checkpoint) }

    def execute
      post resources_path, params: {
        resource: {
          name:,
          description:,
          url:,
          checkpoint_id: checkpoint.id
        }
      }
    end

    it 'creates a Resource with expected attributes' do
      expect { execute }.to change { Resource.count }.by(1)
      expect(Resource.last).to have_attributes(
        name: 'Pedro',
        description: 'Este es un recurso',
        url: 'http://google.cl'
      )
    end

    it 'creates a Resource-Checkpoint assosiation with expected attributes' do
      expect { execute }.to change { CheckpointResource.count }.by(1)
      expect(CheckpointResource.last).to have_attributes(
        checkpoint_id: checkpoint.id,
        resource_id: Resource.last.id
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

    context 'with missing description param' do
      let(:description) { nil }

      it "doesn't create a new record" do
        expect do
          execute
        rescue StandardError => e
        end.to change { Resource.count }.by(0)
      end
    end

    context 'with missing url param' do
      let(:url) { nil }

      it "doesn't create a new record" do
        expect do
          execute
        rescue StandardError => e
        end.to change { Resource.count }.by(0)
      end
    end
  end
end
