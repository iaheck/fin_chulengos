class RoadmapsController < ApplicationController
  before_action :set_roadmap, only: %i[show enroll]

  def index
    redirect_to '/login/index' unless user_signed_in?
    @roadmaps = Roadmap.all
  end

  def show
    redirect_to '/login/index' unless user_signed_in?
  end

  def enroll
    @roadmap_user = RoadmapUser.new(
      user_id: current_user.id,
      roadmap_id: @roadmap.id
    )
    if @roadmap_user.save
      puts 'save succesful'
    else
      puts 'not saveeed'
    end
  end

  private

  def set_roadmap
    puts '----------READ HERE-----------'
    puts params
    @roadmap = Roadmap.find(params[:id])
  end

end
