class RoadmapsController < ApplicationController
  def show
    @roadmap = Roadmap.find(params[:id])
  end
end
