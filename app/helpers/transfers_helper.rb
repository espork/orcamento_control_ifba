#encoding: utf-8
module TransfersHelper
  
  def transfer_pt(name)
      
      attr = name.to_s
      case attr
      when "value"
        attr = "Valor"
      when "identification"
        attr = "Número"
      when "date"
        attr = "Data"
      when "unit_id"
        attr = "Campus"
      end
      
    
     attr
    
  end
  
end
