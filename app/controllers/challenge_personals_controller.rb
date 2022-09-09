class ChallengePersonalsController < ApplicationController
  before_action :set_challenge_personal, only: %i[show enroll_challenge]
  before_action :set_checkpoint, only: %i[index]

  def index
    @list_challenge_personal = @checkpoint.challenge_personals
  end

  def show; end

  def new
    @challenge_personal = ChallengePersonal.new
    @checkpoint = Checkpoint.find(params[:id])
  end

  def create
    url = params[:challenge_personal][:url]
    url = 'https://' << url if !url.nil? && !url.start_with?('http')
    @challenge_personal = ChallengePersonal.new(name: params[:challenge_personal][:name],
                                                description: params[:challenge_personal][:description],
                                                url:, checkpoint_id: params[:id])

    if @challenge_personal.save
      redirect_to @challenge_personal
    else
      render :new, status: :unprocessable_entity
    end
  end

  def enroll_challenge
    if !@user_already_enrolled
      @user_challenge_assignment = UserChallengeAssigment.new(user_id: current_user.id,
                                                              challenge_personal_id: @challenge_personal.id)
      if @user_challenge_assignment.save
        flash[:notice] = 'Estás inscrito en el Desafío!'
        puts 'Estás inscrito en el Desafío!'
      else
        flash[:alert] = 'Error al inscribirse en el Desafío'
        puts 'Error al inscribirse en el Desafío'
      end
    else
      flash[:alert] = 'Ya estas inscrito en el Desafío'
      puts 'Ya estas inscrito en el Desafío'
    end
    redirect_to checkpoint_challenge_personal_path
  end

  private

  def set_challenge_personal
    @challenge_personal = ChallengePersonal.find(params[:id])
    @user_already_enrolled = UserChallengeAssigment.exists?(
      user_id: current_user.id,
      challenge_personal_id: @challenge_personal.id)
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
