class CreateSessionsParticipations < ActiveRecord::Migration
  def self.up
    create_table :sessions_participations do |t|
    
      t.integer :client
      t.integer :session

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions_participations
  end
end
