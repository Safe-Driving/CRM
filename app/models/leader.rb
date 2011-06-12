class Leader < ActiveRecord::Base
  has_many :agency
  has_many :trainers_availability
  has_many :session



  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


end
