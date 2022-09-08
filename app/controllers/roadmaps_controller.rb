class RoadmapsController < ApplicationController
  def show
    if !user_signed_in? 
      redirect_to '/login/index'
    end
    @roadmap = Roadmap.find(params[:id])
  end
end
