class CreateVehiclesAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :vehicles_availabilities do |t|
    
      t.integer :vehicle_id
      t.integer :formation_id
      t.datetime :date_begin
      t.datetime :date_end

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles_availabilities
  end
end
