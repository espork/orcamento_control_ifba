class Nature < ActiveRecord::Base
  attr_accessible :esf, :ev, :fonte, :nd, :pi, :ptres
  
  validates_presence_of :esf, :message => " deve ser preenchido"
  validates_presence_of :ev, :message => " deve ser preenchido"
  validates_presence_of :fonte, :message => " deve ser preenchido"
  validates_presence_of :nd, :message => " deve ser preenchido"
  validates_presence_of :pi, :message => " deve ser preenchido"
  validates_presence_of :ptres, :message => " deve ser preenchido"
  
end
