class Unit < ActiveRecord::Base
  attr_accessible :code, :name
  
  validates_presence_of :code, :message => " deve ser preenchido"
  validates_presence_of :name, :message => " deve ser preenchido"
end
