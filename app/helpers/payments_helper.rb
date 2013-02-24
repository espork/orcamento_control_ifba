#encoding: utf-8
module PaymentsHelper
  
  
  def payment_pt(name)
      
      attr = name.to_s
      case attr
      when "value"
        attr = "O valor"
      when "identification"
        attr = "O Número"
      when "date"
        attr = "A Data"
      end
    
     attr
    
  end
  
end
