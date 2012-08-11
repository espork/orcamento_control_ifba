class ResourcesController < ApplicationController
  
  def show
    @resource = Resource.find(params[:id])

    respond_to do |format|
      format.html
    end

  end
end
