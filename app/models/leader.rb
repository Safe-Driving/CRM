class Leader < ActiveRecord::Base
    # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :agency
  has_many :trainers_availability
  has_many :session



  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i



  def ability
  @ability ||= Ability.new(self)
end


end
