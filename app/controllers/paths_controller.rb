class PathsController < ApplicationController
  def index
  end

  def show
    @path = Path.find(params[:id])
  end
end
