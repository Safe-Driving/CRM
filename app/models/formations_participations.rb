class FormationsParticipations < ActiveRecord::Base
  belongs_to :formation
  belongs_to :client
end
