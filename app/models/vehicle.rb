class Vehicle < ActiveRecord::Base
  belongs_to :agency, :foreign_key => "agency"
  has_many :vehicles_availability, :foreign_key => "vehicle"
end
