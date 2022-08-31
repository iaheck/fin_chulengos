require 'rails_helper'

RSpec.describe "ChallengePersonals", type: :request do
  describe "GET /index" do
    context "ChallengePersonals index" do
      it "The page must to have the title ChallengePersonals" do
        get challenge_personals_path
        expect(response.body).to include("Desafios personales")
      end
    end
  end

  describe "POST /create" do
    def execute
      post challenge_personals_path, params: {
        name: name,
        description: description,
        url: url,
        checkpoint_id: checkpoint_id
      }
    end

    it do
      expect { execute }.to change { ChallengePersonal.count }.by(1)
      expect(ChallengePersonal.last).to have_attributes(
        name: 'Fin',
        description: 'Contenido',
        url: 'http://google.cl',
        checkpoint_id: 1
      )
    end
  end

end
