class ChallengePersonalsController < ApplicationController
  before_action :set_chllenge_personals, only: [:show]

  def index
    @list_challenge_personals = ChallengePersonal.all
  end

  def show; end

  def new
    @challenge_personals = ChallengePersonal.new
  end

  def create
    @challenge_personals = ChallengePersonal.new(name: params[:name], description: params[:description], url: params[:url], checkpoint_id: params[:checkpoint_id])

    if @challenge_personals.save
      redirect_to @challenge_personals
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def set_chllenge_personals
    @challenge_personals = ChallengePersonal.find(params[:id])
  end
    
end
