class Effort < ActiveRecord::Base
  
  attr_accessible :date, :obs, :resource_id, :value,:identification
  
  belongs_to :resource
  has_many :payments,:dependent => :destroy
  
  def total_payments
    total = 0
    for payment in payments
      total = total + payment.value
    end
    
    total
  end
  
  def balance
    value - self.total_payments 
  end
    
end
