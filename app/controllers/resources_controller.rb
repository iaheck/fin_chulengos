class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show]
  before_action :set_checkpoint, only: %i[create index]

  def index
    @list_resources = Resource.all
  end

  def show; end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(
      name: params[:resource][:name],
      description: params[:resource][:description],
      url: params[:resource][:url]
    )

    if @resource.save
      # @checkpoint = Checkpoint.find(params[:checkpoint_id])
      redirect_to checkpoint_resource_path(@checkpoint), flash: { success: 'Recurso creado con éxito' }
    else
      redirect_to checkpoint_resource_path(@checkpoint), flash: { error: 'Error al crear el recurso' }
      #  render :index, status: :unprocessable_entity
    end
  end

  private

  def set_resource
    @resource = Resource.find(params[:id])
  end

  def set_checkpoint
    checkpoint_id = if params[:resource].present?
                      params[:resource][:checkpoint_id]
                    else
                      params[:id]
                    end

    @checkpoint = Checkpoint.find(checkpoint_id)
  end

  def set_checkpoint_from_id
    @checkpoint = Checkpoint.find(params[:id])
  end

  def set_checkpoint_from_checkpoint_id
    @checkpoint = Checkpoint.find(params[:resource][:checkpoint_id])
  end
end
