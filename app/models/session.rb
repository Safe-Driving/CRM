class Session < ActiveRecord::Base
  belongs_to :leader
  belongs_to :agency
  belongs_to :place

  has_many :sessions_score, :foreign_key => "score"
  has_many :sessions_participations, :foreign_key => "partitcipations"

end
