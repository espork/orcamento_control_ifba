class EffortsController < ApplicationController
  
  def create
     @effort = Effort.new(params[:effort])
     @effort.resource_id = params[:resource_id]
         
    respond_to do |format|
      if @effort.save
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
    @effort = Effort.new
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    
    @effort = Effort.find(params[:id])
    @effort.destroy
    @resource = Resource.find(params[:resource_id])
    respond_to do |format|
      format.js
    end
  end
end
