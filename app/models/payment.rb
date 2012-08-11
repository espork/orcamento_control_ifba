class Payment < ActiveRecord::Base
  attr_accessible :date, :effort_id, :favored, :identify, :nf_date, :nf_number, :value,:identification
  belongs_to :effort
  
  validates_presence_of :identification, :message => " deve ser preenchido"
  validates_presence_of :date, :message => " deve ser preenchida"
  validates_presence_of :value, :message => " deve ser preenchido"
  validates_numericality_of :value, :greater_than => 0,:message => " deve ser maior que zero"
  validate :has_balance
  
  private 
  def has_balance
    
    if (!value.nil? && (effort.balance < value))
      errors.add("O"," Valor do pagamento ultrapassa o saldo do empenho.")
    end
    
  end
  
end
