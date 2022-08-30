class ResourceController < ApplicationController
    before_action :set_resource, only: [:show]

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
          render :new, status: :unprocessable_entity
        end
    end

    private
    def set_resource
        @resource = Resource.find(params[:id])
    end

end
