class CreateSessions < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
    
      t.datetime :date
      t.integer :integer
      t.string :type
      t.integer :users_number
      t.integer :trainer
      t.integer :place

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
