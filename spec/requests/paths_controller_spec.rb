require "rails_helper"

RSpec.describe PathsController, type: :request do
  let!(:path) { create(:path) }

  describe "GET /show" do
    it "returns http success" do
      get path_path(path.id)
      expect(response.has_http_status?(:success)).to be(true)
    end
  end

  describe "show path name" do
    it "The page must have the path name" do
      get path_path(path.id)
      expect(response.body).to include("sendero")
    end
  end
end
