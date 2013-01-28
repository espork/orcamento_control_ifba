class Budget < ActiveRecord::Base
  
  attr_accessible :end_date, :nc_number, :start_date, :resources_attributes
  has_many :resources, :dependent => :destroy
  accepts_nested_attributes_for :resources
  
  validates_presence_of :nc_number, :message => " deve ser preenchido"
  validates_presence_of :start_date, :message => " deve ser preenchido"
  validates_presence_of :end_date, :message => " deve ser preenchido"
  validates_presence_of :resources, :message => " deve ser preenchido"
  
  
  def total
    
    total_value = 0
    
    for resource in resources
      total_value = total_value + resource.value
    end
    
    total_value
  end
  
end
