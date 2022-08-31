require "rails_helper"

RSpec.describe "Logins", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/login/index"
      expect(response.has_http_status?(:success)).to be(true)
    end
  end
end
