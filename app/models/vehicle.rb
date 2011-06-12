class Vehicle < ActiveRecord::Base
  belongs_to :agency
  has_many :vehicles_availability
end
