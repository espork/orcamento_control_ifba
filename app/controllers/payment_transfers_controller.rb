class PaymentTransfersController < ApplicationController
 
  def edit
     @effort = EffortTransfer.find(params[:effort_transfer_id])
     @payment_transfer = PaymentTransfer.find(params[:id])
     
     respond_to do |format|
      format.js
    end
  end
  
  def update
    
    @payment_transfer = PaymentTransfer.find(params[:id])
    @payment_transfer.effort_transfer_id = params[:effort_transfer_id]
    @effort = EffortTransfer.find(params[:effort_transfer_id])

    respond_to do |format|
      if @payment_transfer.update_attributes(params[:payment_transfer])
        format.js
        @payments = PaymentTransfer.find_all_by_effort_transfer_id(params[:effort_transfer_id])
      else
        format.js
      end
    end
  end


  def create
     @payment_transfer = PaymentTransfer.new(params[:payment_transfer])
     @payment_transfer.effort_transfer_id = params[:effort_transfer_id]
     @effort = EffortTransfer.find(params[:effort_transfer_id])
     
    respond_to do |format|
      if @payment_transfer.save
        @payments = PaymentTransfer.find_all_by_effort_transfer_id(params[:effort_transfer_id])
        format.js 
      else
        format.js
      end
    end
  end

  def new 
    
    @effort = EffortTransfer.find(params[:effort_transfer_id])
    @payment_transfer = PaymentTransfer.new
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    
    @payment_transfer = PaymentTransfer.find(params[:id])
    @payment_transfer.destroy
    @effort = EffortTransfer.find(params[:effort_transfer_id])
    @payments = PaymentTransfer.find_all_by_effort_transfer_id(params[:effort_transfer_id])
    respond_to do |format|
      format.js
    end
  end
  
  def show
    
    @payment_transfer = PaymentTransfer.find(params[:id])

    respond_to do |format|
      format.html {render :layout => false}
    end
  end
 
 
end
