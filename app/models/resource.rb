class Resource < ActiveRecord::Base
  attr_accessible :nature_id, :value,:budget_id
  belongs_to :budget
  belongs_to :nature
  has_many :efforts
  
  
  def total_efforts
    total = 0
    for effort in efforts
      total = total + effort.value
    end
    
    total
  end
  
  def balance
    value - self.total_efforts 
  end
  
end
