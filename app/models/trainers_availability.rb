class TrainersAvailability < ActiveRecord::Base
  belongs_to :leader, :foreign_key => "availability"

end
