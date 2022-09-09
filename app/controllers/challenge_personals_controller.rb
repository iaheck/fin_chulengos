class ChallengePersonalsController < ApplicationController
  before_action :set_challenge_personal, only: %i[show enroll_challenge]
  before_action :set_checkpoint, only: %i[index]

  def index
    @list_challenge_personal = @checkpoint.challenge_personals
  end

  def show
    @user_already_enrolled = UserChallengeAssigment.exists?(
      user_id: current_user.id,
      challenge_personal_id: @challenge_personal.id
    )
  end

  def new
    @challenge_personal = ChallengePersonal.new
  end

  def create
    url = params[:url]
    url = 'https://' << url if !url.nil? && !url.start_with?('http')
    @challenge_personal = ChallengePersonal.new(name: params[:name], description: params[:description],
                                                url:, checkpoint_id: params[:checkpoint_id])

    if @challenge_personal.save
      redirect_to @challenge_personal
    else
      render :new, status: :unprocessable_entity
    end
  end

  def enroll_challenge
    @user_challenge_assignment = UserChallengeAssigment.new(user_id: current_user.id,
                                                            challenge_personal_id: @challenge_personal.id)
    if @user_challenge_assignment.save
      flash[:notice] = 'Estás inscrito en el Desafío!'
    else
      flash[:alert] = 'Error al inscribirse en el Desafío'
    end
    redirect_to @challenge_personal
  end

  private

  def set_challenge_personal
    @challenge_personal = ChallengePersonal.find(params[:id])
  end

  def set_checkpoint
    checkpoint_id = if params[:resource].present?
                      params[:resource][:checkpoint_id]
                    else
                      params[:id]
                    end

    @checkpoint = Checkpoint.find(checkpoint_id)
  end
end
