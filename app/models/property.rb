class Property < ActiveRecord::Base
  has_many :leases
  has_many :agents, through: :leases
end
