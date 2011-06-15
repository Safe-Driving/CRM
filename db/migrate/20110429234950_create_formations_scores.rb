class CreateFormationsScores < ActiveRecord::Migration
  def self.up
    create_table :formations_scores do |t|
    
      t.integer :formation
      t.integer :client
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :formations_scores
  end
end
