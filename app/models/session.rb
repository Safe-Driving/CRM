class Session < ActiveRecord::Base
  belongs_to :leader, :foreign_key => "session"
  belongs_to :agency, :foreign_key => "session"
  belongs_to :place, :foreign_key => "session"

  has_many :sessions_score, :foreign_key => "score"
  has_many :sessions_participations, :foreign_key => "partitcipations"

end
