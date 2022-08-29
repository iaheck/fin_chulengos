class CheckpointsController < ApplicationController
  def index
  end
  
  def show
    @checkpoint = Checkpoint.find(params[:id])
  end
end
