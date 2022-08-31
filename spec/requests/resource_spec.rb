require "rails_helper"

RSpec.describe "Resources", type: :request do
  describe "GET /index" do
    context "when you go to Resource index" do
      it "The page must to have the title Resources" do
        get resource_index_path
        expect(response.body).to include("Resource")
      end

      it "The list of resources must to have the title List of resources" do
        get resource_index_path
        expect(response.body).to include("List of Resources")
      end
    end
  end

  describe "POST /create" do
    let(:name) { "Pedro" }

    def execute
      post resource_index_path, params: { name: name, description: "Contenido", url: "http://google.cl" }
    end

    it do
      expect { execute }.to change(Resource, :count).by(1)
      expect(Resource.last).to have_attributes(name: "Pedro", description: "Contenido", url: "http://google.cl")
    end

    context "with missing name param" do
      let(:name) { nil }

      it "doesn't create a new record" do
        expect do
          execute
        rescue StandardError
          # Do nothing
        end.not_to change(Resource, :count)
      end
    end
  end
end
