class TestsScore < ActiveRecord::Base
  belongs_to :client, :foreign_key =>"score"

end
