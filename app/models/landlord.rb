class Landlord < ActiveRecord::Base
  validates_presence_of :name, :gender, :dob

  has_many :properties
end
