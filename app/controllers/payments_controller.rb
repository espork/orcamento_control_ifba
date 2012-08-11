class PaymentsController < ApplicationController


  def edit
     @effort = Effort.find(params[:effort_id])
     @payment = Payment.find(params[:id])
     
     respond_to do |format|
      format.js
    end
  end

  def create
     @payment = Payment.new(params[:payment])
     @payment.effort_id = params[:effort_id]
     @effort = Effort.find(params[:effort_id])
     
    respond_to do |format|
      if @payment.save
        @payments = Payment.find_all_by_effort_id(params[:effort_id])
        format.js 
      else
        format.js
      end
    end
  end

  def new
    @effort = Effort.find(params[:effort_id])
    @payment = Payment.new
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    
    @payment = Payment.find(params[:id])
    @payment.destroy
    @effort = Effort.find(params[:effort_id])
    @payments = Payment.find_all_by_effort_id(params[:effort_id])
    respond_to do |format|
      format.js
    end
  end


end
