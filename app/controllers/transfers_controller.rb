class TransfersController < ApplicationController
  
  def index
    @resource = Resource.find(params[:resource_id])
    @transfers = Transfer.find_all_by_unit_id(params[:unit_id])
    
  end
  
  def show
    
    @transfer = Transfer.find(params[:id])

    respond_to do |format|
      format.html
    end

  end

  
   def create
     @transfer = Transfer.new(params[:transfer])
     @transfer.resource_id = params[:resource_id]
     
    respond_to do |format|
      if @transfer.save
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
    @transfer = Transfer.new
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    
    @transfer = Transfer.find(params[:id])
    @transfer.destroy
    @resource = Resource.find(params[:resource_id])
    respond_to do |format|
      format.js
    end
  end
  
end
