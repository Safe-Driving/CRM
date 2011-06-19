class PlacesAvailability < ActiveRecord::Base
  belongs_to :formation
  belongs_to :place

end
