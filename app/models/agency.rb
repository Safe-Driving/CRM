class Agency < ActiveRecord::Base
  has_many :client
  has_many :session
  belongs_to :leader
  has_many :vehicle


  validates :city, :presence => true
  validates :address, :presence => true

end
