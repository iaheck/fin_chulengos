require 'rails_helper'

RSpec.describe "Checkpoints", type: :request do
  describe "GET /index" do
    # it "returns http success" do
    #   get "/checkpoints/index"
    #   expect(response).to have_http_status(:success)
    # end
  end

  describe "POST /create" do
    let(:name) { 'github' }
    let(:description) { 'this is a nice checkpoint' }

    def execute
      post resource_index_path, params: {
        name: name,
        description: description
      }
    end

    it do
      expect { execute }.to change { Resource.count }.by(1)
      expect(Resource.last).to have_attributes(
        name: name,
        description: description
      )
    end

    context "with missing name param" do
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
