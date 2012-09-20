#encoding: utf-8
class Transfer < ActiveRecord::Base
  attr_accessible :resource_id, :unit_id, :value,:identification,:date,:obs
  belongs_to :resource
  belongs_to :unit
  has_many :effort_transfers
  
  validates_presence_of :unit_id, :message => " deve ser preenchido"
  validates_presence_of :identification, :message => " deve ser preenchido"
  validates_presence_of :date, :message => " deve ser preenchida"
  validates_presence_of :value, :message => " deve ser preenchido"
  validates_numericality_of :value, :greater_than => 0,:message => " deve ser maior que zero"
  validate :has_balance
  
  def value=(_value)
    self[:value]=  _value.sub(".","").sub(",",".")
  end
  
  def total_efforts
    total = 0
    for effort in effort_transfers
      total = total + effort.value
    end
    
    total
  end
  
   def balance
    value - self.total_efforts 
  end
  
  private 
  def has_balance
    
    if (!value.nil? && (resource.balance < value))
      errors.add("O"," Valor do Sub Repasse ultrapassa o saldo do crédito desta natureza.")
    end
    
  end
  
end
