class RoadmapsController < ApplicationController
  def show
    redirect_to '/login/index' unless user_signed_in?
    @roadmap = Roadmap.find(params[:id])
  end
end
