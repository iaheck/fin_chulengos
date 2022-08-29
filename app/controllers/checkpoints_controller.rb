class CheckpointsController < ApplicationController
  def index
  end

  def show
    @checkpoint = Checkpoint.find(params[:id])
  end

  def new
    @checkpoint = Checkpoint.new
  end

  def create
    @checkpoint = Checkpoint.new(checkpoint_params)

    if @checkpoint.save
      redirect_to @checkpoint
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def checkpoint_params
      params.require(:checkpoint).permit(:name, :description)
    end
end
