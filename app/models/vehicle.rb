class Vehicle < ActiveRecord::Base
  belongs_to :agency, :foreign_key => "agency"
  has_many :vehicles_availability
  has_many :formations, :through => :vehicles_availability

  validates :category, :presence => true
  validates :brand, :presence => true
  validates :model, :presence => true


  def is_available?
      objet = Vehicle.find(self.id)
    if objet.formations.empty? == true
      true
    elsif
      false
    end
  end


  def get_availables
    items = Vehicle.all
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
