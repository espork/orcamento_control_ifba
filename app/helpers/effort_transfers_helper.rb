#encoding: utf-8
module EffortTransfersHelper
  
  def effort_transfer_pt(name)
      
      attr = name.to_s
      case attr
      when "value"
        attr = "Valor"
      when "identification"
        attr = "Número"
      when "date"
        attr = "Data"
      end
    
     attr
    
  end
  
end
