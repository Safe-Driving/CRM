class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me


  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  belongs_to :agency
  has_many :sessions_score
  has_many :formation_participations
  has_many :formations, :through => :formation_participations
  has_many :tests_score

  has_many :clients_participations
  has_many :formations, :through => :clients_participations

  delegate :can?, :cannot?, :to => :ability




  def ability
  @ability ||= Ability.new(self)
  end


end
