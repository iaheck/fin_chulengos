class RoadmapsController < ApplicationController
  include Authenticator

  def show
    @roadmap = Roadmap.find(params[:id])
  end
end
