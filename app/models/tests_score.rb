class TestsScore < ActiveRecord::Base
  belongs_to :client, :foreign_key =>"score"
  belongs_to :formation, :foreign_key =>"score"
end
