class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
    
      t.string :type
      t.string :brand
      t.string :model
	  t.interger :agence

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
