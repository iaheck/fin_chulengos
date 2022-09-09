class RoadmapsController < ApplicationController
  before_action :set_roadmap, only: %i[show enroll]

  def index
    redirect_to '/login/index' unless user_signed_in?
    @roadmaps = Roadmap.all
  end

  def show
    redirect_to '/login/index' unless user_signed_in?

    @user_already_enrolled = RoadmapUser.exists?(
      user_id: current_user.id,
      roadmap_id: @roadmap.id
    )
  end

  def enroll
    @roadmap_user = RoadmapUser.new(
      user_id: current_user.id,
      roadmap_id: @roadmap.id
    )
    if @roadmap_user.save
      flash[:notice] = "Saved succesfully!"
    else
      flash[:alert] = "Error"
    end
    redirect_to @roadmap
  end

  private

  def set_roadmap
    @roadmap = Roadmap.find(params[:id])
  end
end
