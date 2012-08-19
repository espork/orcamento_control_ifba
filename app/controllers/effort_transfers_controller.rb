class EffortTransfersController < ApplicationController
  
  def create
     @effort_transfer = EffortTransfer.new(params[:effort_transfer])
     @effort_transfer.transfer_id = params[:transfer_id]
         
    respond_to do |format|
      if @effort_transfer.save
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
    @effort_transfer = EffortTransfer.new
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    
    @effort_transfer = EffortTransfer.find(params[:id])
    @effort_transfer.destroy
    @resource = Resource.find(params[:resource_id])
    @transfer = Transfer.find(params[:transfer_id])
    respond_to do |format|
      format.js
    end
  end
end
