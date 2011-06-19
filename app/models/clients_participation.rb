class ClientsParticipation < ActiveRecord::Base
  belongs_to :client
  belongs_to :formation

end
