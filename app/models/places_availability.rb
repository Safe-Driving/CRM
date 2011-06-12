class PlacesAvailability < ActiveRecord::Base
  belongs_to :session, :foreign_key => "availability"

end
