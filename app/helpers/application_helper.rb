module ApplicationHelper
  
  def real_format(value)
    
    final = number_with_precision(value, :precision => 2, :separator => ',', :delimiter => '.')
    
    final
  end
  
  
  def balance(value)
    raw "<span class='label label-warning'>Saldo : #{real_format(value)}</span>"
  end
  
end
