class CreateAgencies < ActiveRecord::Migration
  def self.up
    create_table :agencies do |t|
    
      t.string :city
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :agencies
  end
end
