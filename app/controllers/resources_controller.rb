class ResourcesController < ApplicationController
  
  def show
    @resource = Resource.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
  
  def detail
    @resource = Resource.find(params[:resource_id])
    
    respond_to do |format|
      format.html {render :layout => false}
    end
    
  end
  
end
