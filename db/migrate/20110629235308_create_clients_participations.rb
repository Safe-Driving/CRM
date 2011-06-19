class CreateClientsParticipations < ActiveRecord::Migration
  def self.up
    create_table :clients_participations do |t|
    
      t.integer :client_id
      t.integer :formation_id
      t.datetime :date_begin
      t.datetime :date_end

      t.timestamps
    end
  end

  def self.down
    drop_table :clients_participations
  end
end
