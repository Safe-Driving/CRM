class CreateFormations < ActiveRecord::Migration
  def self.up
    create_table :formations do |t|
    
      t.datetime :date
      t.datetime :datefin
      t.integer  :agency
      t.string   :category
      t.integer  :users_number
      t.integer  :trainer
      t.integer  :place

      t.timestamps
    end
  end

  def self.down
    drop_table :formations
  end
end
