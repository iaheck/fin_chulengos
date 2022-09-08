class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show]
  before_action :set_checkpoint, only: [:index]

  def index
    @list_resources = Resource.all
  end

  def show; end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(name: params[:name], description: params[:description], url: params[:url])

    if @resource.save
      redirect_to @resource
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_resource
    @resource = Resource.find(params[:id])
  end
  def set_checkpoint
    @checkpoint = Checkpoint.find(params[:id])
  end

end
