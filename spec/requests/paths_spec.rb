require 'rails_helper'

RSpec.describe "Paths", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/paths/index"
      expect(response).to have_http_status(:success)
    end
  end

end
