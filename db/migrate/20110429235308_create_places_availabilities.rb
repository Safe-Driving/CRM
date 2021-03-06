class CreatePlacesAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :places_availabilities do |t|
    
      t.integer :place_id
      t.integer :formation_id
      t.datetime :date_begin
      t.datetime :date_end

      t.timestamps
    end
  end

  def self.down
    drop_table :places_availabilities
  end
end
