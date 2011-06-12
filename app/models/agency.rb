class Agency < ActiveRecord::Base
  has_many :client, :foreign_key => "agency"
  has_many :session, :foreign_key => "agency"
  belongs_to :leader, :foreign_key => "agency"
  has_many :vehicle, :foreign_key => "agency"


  validates :city, :presence => true
  validates :address, :presence => true

end
