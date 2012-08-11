module ApplicationHelper
  
  def real_format(value)
    aux = number_with_precision(value, :precision => 2)
    
    final = number_with_delimiter(aux, :delimiter => ".",:separator => ",")
    
    final
  end
  
  
  def balance(value)
    raw "<span class='label label-warning'>Saldo : #{real_format(value)}</span>"
  end
  
end
