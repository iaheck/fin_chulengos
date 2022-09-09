require 'rails_helper'

RSpec.describe 'ChallengePersonals', type: :request do
  let!(:user) { create(:user) }
  let!(:checkpoint) { create(:checkpoint) }
  
  before do
    sign_in user
  end

  describe 'GET /index' do
    context 'ChallengePersonals index' do
      it 'The page must to have the title ChallengePersonals' do
        get challenge_personals_path(id: checkpoint)
        expect(response.body).to include('Desafios personales')
      end
    end
  end

  # describe 'POST /create' do
  #   let(:challenge_personal[]) { 'Pedro' }
  #   let(:description) { 'Contenido' }
  #   let(:url) { 'http://google.cl' }
  #   let(:checkpoint) do
  #     Checkpoint.create(name: 'Checkpoint 1', description: 'Descripción del checkpoint 1')
  #   end
  #   let(:checkpoint_id) { checkpoint.id }

  #   def execute
  #     post checkpoint_challenge_personals_path, params: {
  #       name:,
  #       description:,
  #       url:,
  #       checkpoint_id:
  #     }
  #     binding.break
  #   end

  #   it do
  #     expect { execute }.to change { ChallengePersonal.count }.by(1)

  #     expect(ChallengePersonal.last).to have_attributes(
  #       name: 'Pedro',
  #       description: 'Contenido',
  #       url: 'http://google.cl',
  #       checkpoint:
  #     )
  #   end
  # end

  describe 'GET /show' do
    let!(:challenge_personal) { create(:challenge_personal) }

    it 'The page must to have the title Desafio personal' do
      get challenge_personal_path(challenge_personal.id)

      expect(response.body).to include('Desafio personal')
    end
  end
end
