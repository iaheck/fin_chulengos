require 'rails_helper'

RSpec.describe PathsController, type: :request do
  let!(:path) { create(:path) }

  describe "GET /show" do
    it "returns http success" do
      get path_path(path.id)
      expect(response).to have_http_status(:success)
    end
  end

  # describe "POST /create" do
  #   let(:name) { 'Pedro' }

  #   def execute
  #     post resource_index_path, params: {
  #       name: name,
  #       description: 'Contenido',
  #       url: 'http://google.cl'
  #     }
  #   end

  #   it do
  #     expect { execute }.to change { Resource.count }.by(1)
  #     expect(Resource.last).to have_attributes(
  #       name: 'Pedro',
  #       description: 'Contenido',
  #       url: 'http://google.cl'
  #     )
  #   end

  #   context "with missing name param" do
  #     let(:name) { nil }

  #     it "doesn't create a new record" do
  #       expect do
  #         execute
  #       rescue StandardError => e
  #       end.to change { Resource.count }.by(0)
  #     end
  #   end

end
