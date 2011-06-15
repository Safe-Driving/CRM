class CreateFormationsParticipations < ActiveRecord::Migration
  def self.up
    create_table :formations_participations do |t|
    
      t.integer :client
      t.integer :formations

      t.timestamps
    end
  end

  def self.down
    drop_table :formations_participations
  end
end
