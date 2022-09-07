class CheckpointsController < ApplicationController
  before_action :set_roadmap, only: [:index]
  before_action :set_checkpoint, only: [:show]

  def index; end

  def show; end

  def new
    @checkpoint = Checkpoint.new
    @all_roadmaps = Roadmap.all
    #@checkpoint_path = @checkpoint.checkpoints_roadmaps.build
  end

  def create
    @checkpoint = Checkpoint.new(
      name: checkpoint_params[:name],
      description: checkpoint_params[:description],
      roadmaps: Roadmap.where(id: checkpoint_params[:roadmaps_ids]),
      )
    # checkpoint_params[:roadmaps][:id].each do |roadmap|
    #   if !roadmap.empty?
    #     @checkpoint.checkpoints_roadmaps.build(:roadmap_id => roadmap)
    #   end
    # end

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

  def set_roadmap
    @roadmap = Roadmap.find(params[:roadmap_id])
  end

  def set_checkpoint
    @checkpoint = Checkpoint.find(params[:id])
  end
end
