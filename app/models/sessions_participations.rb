class SessionsParticipations < ActiveRecord::Base
  belongs_to :session, foreign_key => "participations"
  belongs_to :client, foreign_key => "participations"
end
