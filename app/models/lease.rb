class Lease < ActiveRecord::Base
  belongs_to :agent
  belongs_to :property
  belongs_to :tenant

  validates_presence_of :agent, :property, :tenant
end
