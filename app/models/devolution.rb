#encoding: utf-8
class Devolution < ActiveRecord::Base
  attr_accessible :date, :identification, :resource_id, :value
  belongs_to :resource
  
  validates_presence_of :identification, :message => " deve ser preenchido"
  validates_presence_of :date, :message => " deve ser preenchida"
  validates_presence_of :value, :message => " deve ser preenchido"
  validates_numericality_of :value, :greater_than => 0,:message => " deve ser maior que zero"
  validate :has_balance
  
  def value=(_value)
    self[:value]=  _value.sub(".","").sub(",",".")
  end
  
  
  private 
  def has_balance
    
    if (!value.nil? && (resource.balance < value))
      errors.add("O"," Valor da Devolução ultrapassa o saldo do crédito desta natureza.")
    end
    
  end
  
end
