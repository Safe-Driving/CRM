class SessionsScore < ActiveRecord::Base
  belongs_to :session
  belongs_to :client
end
