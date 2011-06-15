class Place < ActiveRecord::Base
  belongs_to :session, :foreign_key => "place"

  has_many :places_availability, :foreign_key => "availability"

  validates :name, :presence => true
  validates :city, :presence => true
  validates :address, :presence => true

end
