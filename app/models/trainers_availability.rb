class TrainersAvailability < ActiveRecord::Base
  belongs_to :leader
  belongs_to :formation

end
