class Agent < ActiveRecord::Base
  has_many :leases
  has_many :properties, through: :leases
end
