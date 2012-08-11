class Budget < ActiveRecord::Base
  
  attr_accessible :end_date, :nc_number, :start_date, :resources_attributes
  has_many :resources, :dependent => :destroy
  accepts_nested_attributes_for :resources
  
  def total
    
    total_value = 0
    
    for resource in resources
      total_value = total_value + resource.value
    end
    
    total_value
  end
  
end
