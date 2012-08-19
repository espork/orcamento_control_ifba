class PaymentsController < ApplicationController


  def edit
     @effort = Effort.find(params[:effort_id])
     @payment = Payment.find(params[:id])
     
     respond_to do |format|
      format.js
    end
  end
  
  def update
    
    @payment = Payment.find(params[:id])
    @payment.effort_id = params[:effort_id]
    @effort = Effort.find(params[:effort_id])

    respond_to do |format|
      if @payment.update_attributes(params[:payment])
        format.js
        @payments = Payment.find_all_by_effort_id(params[:effort_id])
      else
        format.js
      end
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
  
  def show
    @payment = Payment.find(params[:id])

    respond_to do |format|
      format.html {render :layout => false}
    end
  end


end
