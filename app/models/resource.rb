class Resource < ActiveRecord::Base
  attr_accessible :nature_id, :value,:budget_id
  belongs_to :budget
  belongs_to :nature
  has_many :efforts
  has_many :transfers
  has_many :devolutions
  
  
  
  def total_payments
    total = 0
    for effort in efforts
      total = total + effort.total_payments
    end
    
    total
  end
  
  def total_efforts
    total = 0
    for effort in efforts
      total = total + effort.value
    end
    
    total
  end
  
  def total_transfers
    total = 0
    for transfer in transfers
      total = total + transfer.value
    end
    
    total
  end
  
  def total_devolutions
    total = 0
    for devolution in devolutions
      total = total + devolution.value
    end
    
    total
  end
  
  def total_spending
    self.total_efforts + self.total_transfers
  end
  
  def balance
    value - self.total_efforts - self.total_transfers - self.total_devolutions
  end
  
end
