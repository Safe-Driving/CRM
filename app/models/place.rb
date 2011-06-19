class Place < ActiveRecord::Base
  belongs_to :session, :foreign_key => "place"

  has_many :places_availability
  has_many :formations, :through => :places_availability

  validates :name, :presence => true
  validates :city, :presence => true
  validates :address, :presence => true


    def is_available?
      objet = Place.find(self.id)
    if objet.formations.empty? == true
      true
    elsif
      false
    end
  end


  def get_availables
    items = Place.all
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
