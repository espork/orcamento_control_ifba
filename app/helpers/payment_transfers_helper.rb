#encoding: utf-8
module PaymentTransfersHelper
  
  
  def payment_transfer_pt(name)
      
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
