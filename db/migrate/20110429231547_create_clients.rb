class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
    
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :has_code
      t.boolean :has_car_permit
      t.boolean :has_moto_permit
      t.integer :agence
      
      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
