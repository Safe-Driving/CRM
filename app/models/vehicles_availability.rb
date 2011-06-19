class VehiclesAvailability < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :formation

end
