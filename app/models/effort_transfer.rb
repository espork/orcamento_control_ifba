#encoding: utf-8
class EffortTransfer < ActiveRecord::Base
  attr_accessible :date, :identification, :obs, :transfer_id, :value
  
  belongs_to :transfer
  has_many :payment_transfers,:dependent => :destroy
  
  validates_presence_of :identification, :message => " deve ser preenchido"
  validates_presence_of :date, :message => " deve ser preenchida"
  validates_presence_of :value, :message => " deve ser preenchido"
  validates_numericality_of :value, :greater_than => 0,:message => " deve ser maior que zero"
  validate :has_balance
  
  def value=(_value)
    self[:value]=  _value.sub(".","").sub(",",".")
  end
  
  def total_payments(payment_to_subtract = nil)
    total = 0
    if(payment_to_subtract.nil?)
      for payment in payment_transfers
        total = total + payment.value
      end
    else
      for payment in payment_transfers
        total = total + payment.value if (payment_to_subtract.id != payment.id)
      end
    end
    
    total
  end
  
  def balance (payment_to_subtract = nil)
    value - self.total_payments(payment_to_subtract) 
  end
  
  
  private 
  def has_balance
    
    if (!value.nil? && (transfer.balance < value))
      errors.add("O"," Valor do empenho ultrapassa o saldo do crédito do Sub Repasse.")
    end
    
  end
  
end
