class CheckpointsController < ApplicationController
  before_action :set_path, only: [:index]
  before_action :set_checkpoint, only: [:show]

  def index
  end

  def show; end

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

    def set_path
      @path = Path.find(params[:path_id])
    end

    def set_checkpoint
      @checkpoint = Checkpoint.find(params[:id])
    end
end
