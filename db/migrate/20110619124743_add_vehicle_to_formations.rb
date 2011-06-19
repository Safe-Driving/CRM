class AddVehicleToFormations < ActiveRecord::Migration
  def self.up
        add_column :formations, :vehicle, :string
  end

  def self.down
    remove_column :formations, :vehicle
  end
end
