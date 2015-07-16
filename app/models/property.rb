class Property < ActiveRecord::Base
  has_many :leases
  has_many :agents, through: :leases

  belongs_to :landlord
  belongs_to :state

  validates_presence_of :landlord, :state
end
