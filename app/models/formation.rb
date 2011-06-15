class Formation < ActiveRecord::Base
  belongs_to :leader
  belongs_to :agency, :foreign_key => "agency"
  belongs_to :place, :foreign_key => "place"

  has_many :formations_score, :foreign_key => "score"
  has_many :formations_participations, :foreign_key => "participations"

end