class Vehicle < ActiveRecord::Base
  belongs_to :agency, :foreign_key => "agency"
  has_many :vehicles_availability

  validates :category, :presence => true
  validates :brand, :presence => true
  validates :model, :presence => true

end
