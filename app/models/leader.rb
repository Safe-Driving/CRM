class Leader < ActiveRecord::Base
  has_many :agency, :foreign_key => "leader"
  has_many :trainers_availability, :foreign_key => "availability"
  has_many :session, :foreign_key => "session"



  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


end
