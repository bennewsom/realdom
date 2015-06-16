# A tenant is a person that leases a property from a
# realestate agent
class Tenant < ActiveRecord::Base
  validates_presence_of :name, :gender, :dob
end
