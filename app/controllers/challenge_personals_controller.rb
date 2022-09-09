class ChallengePersonalsController < ApplicationController
  before_action :set_challenge_personal, only: [:show :enroll_checkpoint]

  def index
    @list_challenge_personal = ChallengePersonal.all
  end

  def show; end

  def new
    @challenge_personal = ChallengePersonal.new
  end

  def create
    @challenge_personal = ChallengePersonal.new(name: params[:name], description: params[:description],
                                                url: params[:url], checkpoint_id: params[:checkpoint_id])

    if @challenge_personal.save
      redirect_to @challenge_personal
    else
      render :new, status: :unprocessable_entity
    end
  end

  def enroll_checkpoint
    @user_challenge_assignment = UserChallengeAssigment.new(user_id: current_user.id,
                                                            challenge_personal_id: @challenge_personal.id)
    if @user_challenge_assignment.save
      flash[:notice] = "Estás inscrito en el Desafío!"
    else
      flash[:alert] = "Error al inscribirse en el Desafío"
    end
    redirect_to @challenge_personal
  end

  private

  def set_challenge_personal
    @challenge_personal = ChallengePersonal.find(params[:id])
  end
end
