class CreateFormationsScores < ActiveRecord::Migration
  def self.up
    create_table :formations_scores do |t|
    
      t.datetime :date
      t.integer :client
      t.integer :score
      t.integer :formation
      t.timestamps
    end
  end

  def self.down
    drop_table :formations_scores
  end
end
