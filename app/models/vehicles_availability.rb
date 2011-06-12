class VehiclesAvailability < ActiveRecord::Base
  belongs_to :vehicle, :foreign_key => "vehicle"

end
