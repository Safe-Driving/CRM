class CreateSessionsScores < ActiveRecord::Migration
  def self.up
    create_table :sessions_scores do |t|
    
      t.integer :session
      t.integer :client
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions_scores
  end
end
