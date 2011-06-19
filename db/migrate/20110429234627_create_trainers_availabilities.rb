class CreateTrainersAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :trainers_availabilities do |t|
    
      t.integer :leader_id
      t.integer :formation_id
      t.datetime :date_begin
      t.datetime :date_end     

      t.timestamps
    end
  end

  def self.down
    drop_table :trainers_availabilities
  end
end
