class CreateTestsScores < ActiveRecord::Migration
  def self.up
    create_table :tests_scores do |t|
    
      t.datetime :date
      t.integer :client
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :tests_scores
  end
end
