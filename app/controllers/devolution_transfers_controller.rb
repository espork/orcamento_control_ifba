class DevolutionTransfersController < ApplicationController
  
  def create
     @devolution_transfer = DevolutionTransfer.new(params[:devolution_transfer])
     @devolution_transfer.transfer_id = params[:transfer_id]
         
    respond_to do |format|
      if @devolution_transfer.save
        @resource = Resource.find(params[:resource_id])
        @transfer = Transfer.find(params[:transfer_id])
        format.js
      else
        @resource = Resource.find(params[:resource_id])
        @transfer = Transfer.find(params[:transfer_id])
        format.js
      end
    end
  end

  def new
    @resource = Resource.find(params[:resource_id])
    @transfer = Transfer.find(params[:transfer_id])
    @devolution_transfer = DevolutionTransfer.new
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    
    @devolution_transfer = DevolutionTransfer.find(params[:id])
    @devolution_transfer.destroy
    @resource = Resource.find(params[:resource_id])
    @transfer = Transfer.find(params[:transfer_id])
    respond_to do |format|
      format.js
    end
  end
  
end
