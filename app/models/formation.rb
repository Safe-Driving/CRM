class Formation < ActiveRecord::Base
  belongs_to :leader
  belongs_to :agency, :foreign_key => "agency"
  belongs_to :place, :foreign_key => "place"

  has_many :vehicles_availability
  has_many :vehicles, :through => :vehicles_availability

  has_many :places_availability
  has_many :places, :through => :places_availability

  has_many :trainers_availability
  has_many :leaders, :through => :trainers_availability

  has_many :formations_score, :foreign_key => "score"
  has_many :formations_participations, :foreign_key => "formations"


end