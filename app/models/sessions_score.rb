class SessionsScore < ActiveRecord::Base
  belongs_to :session, foreign_key => "session_score"
  belongs_to :client, foreign_key => "session_score"
end
