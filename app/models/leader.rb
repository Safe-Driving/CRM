class Leader < ActiveRecord::Base
    # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :agency
  has_many :trainers_availability
  has_many :formations, :through => :trainers_availability
  has_many :session



  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i



  def ability
  @ability ||= Ability.new(self)
  end



    def is_available?
      objet = Leader.find(self.id)
    if objet.formations.empty? == true
      true
    elsif
      false
    end
  end


  def get_availables
    items = Leader.all
    availables = []
    items.each do |item|
      if item.is_available?
          availables.push(item)
      end
    end

    return availables
  end


  def get_first_available
    availables = get_availables
    return availables.first
  end


end
