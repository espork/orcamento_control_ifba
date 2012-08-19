#encoding: utf-8
class PaymentTransfer < ActiveRecord::Base
  attr_accessible :date, :effort_transfer_id, :favored, :identification, :identify, :nf_date, :nf_number, :value
  
  belongs_to :effort_transfer
  
  validates_presence_of :identification, :message => " deve ser preenchido"
  validates_presence_of :date, :message => " deve ser preenchida"
  validates_presence_of :value, :message => " deve ser preenchido"
  validates_numericality_of :value, :greater_than => 0,:message => " deve ser maior que zero"
  validate :has_balance
  
  private 
  def has_balance
    
    if (!value.nil? && (effort_transfer.balance(self) < value))
      errors.add("O"," Valor do pagamento ultrapassa o saldo do empenho.")
    end
    
  end
  
end
