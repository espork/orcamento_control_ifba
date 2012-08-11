class Transfer < ActiveRecord::Base
  attr_accessible :resource_id, :unit_id, :value,:identification,:date,:obs
  belongs_to :resource
  belongs_to :unit
end
