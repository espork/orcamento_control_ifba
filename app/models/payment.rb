class Payment < ActiveRecord::Base
  attr_accessible :date, :effort_id, :favored, :identify, :nf_date, :nf_number, :value,:identification
  belongs_to :effort
  
  validates_presence_of :date, :message => " - deve ser preenchida"
  validates_presence_of :value, :message => " - deve ser preenchido"
  
end
