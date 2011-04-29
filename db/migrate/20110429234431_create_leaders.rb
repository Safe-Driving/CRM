class CreateLeaders < ActiveRecord::Migration
  def self.up
    create_table :leaders do |t|
    
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :role
      t.integer :agence

      t.timestamps
    end
  end

  def self.down
    drop_table :leaders
  end
end
