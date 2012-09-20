#encoding: utf-8
module UnitsHelper
  
  def attribute_pt(name)
      
      attr = name.to_s
      case attr
      when "code"
        attr = "O Código"
      when "name"
        attr = "O Nome"
      end
    
     attr
    
  end
end
