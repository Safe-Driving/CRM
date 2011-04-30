class DeviseCreateClients < ActiveRecord::Migration
  def self.up
    create_table(:clients) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      t.string :first_name
      t.string :last_name
      t.boolean :has_code
      t.boolean :has_car_permit
      t.boolean :has_moto_permit
      t.integer :agence

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :clients, :email,                :unique => true
    add_index :clients, :reset_password_token, :unique => true
    # add_index :clients, :confirmation_token,   :unique => true
    # add_index :clients, :unlock_token,         :unique => true
    # add_index :clients, :authentication_token, :unique => true
  end

  def self.down
    drop_table :clients
  end
end
