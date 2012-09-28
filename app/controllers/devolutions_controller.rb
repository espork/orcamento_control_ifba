class DevolutionsController < ApplicationController
  
  
  def create
     @devolution = Devolution.new(params[:devolution])
     @devolution.resource_id = params[:resource_id]
     
    respond_to do |format|
      if @devolution.save
        @resource = Resource.find(params[:resource_id])
        format.js
      else
        @resource = Resource.find(params[:resource_id])
        format.js
      end
    end
  end
  
  def new
    @resource = Resource.find(params[:resource_id])
    @devolution = Devolution.new
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    
    @devolution = Devolution.find(params[:id])
    @devolution.destroy
    @resource = Resource.find(params[:resource_id])
    respond_to do |format|
      format.js
    end
  end
  
end
