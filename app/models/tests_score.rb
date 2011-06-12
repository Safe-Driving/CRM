class TestsScore < ActiveRecord::Base
  belongs_to :client, :foreign_key => "scores"

end
