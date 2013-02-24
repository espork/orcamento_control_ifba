#encoding: utf-8
module BudgetsHelper
  
   def translate_bg_attr(name)
     
      attr = name.to_s
      case attr
      when "nc_number"
        attr = "O Nº da NC"
      when "start_date"
        attr = "A Data início"
      when "end_date"
        attr = "A Data final"
      when "resources"
        attr = "Recursos"
      end
    
     attr
    
  end
  
end
