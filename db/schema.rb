# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110619124743) do

  create_table "agencies", :force => true do |t|
    t.string   "city"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "has_code"
    t.boolean  "has_car_permit"
    t.boolean  "has_moto_permit"
    t.boolean  "passing_code"
    t.boolean  "passing_car_permit"
    t.boolean  "passing_moto_permit"
    t.integer  "agence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["email"], :name => "index_clients_on_email", :unique => true
  add_index "clients", ["reset_password_token"], :name => "index_clients_on_reset_password_token", :unique => true

  create_table "formations", :force => true do |t|
    t.datetime "date"
    t.datetime "datefin"
    t.integer  "agency"
    t.string   "category"
    t.integer  "users_number"
    t.integer  "trainer"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vehicle"
  end

  create_table "formations_participations", :force => true do |t|
    t.integer  "client"
    t.integer  "formations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formations_scores", :force => true do |t|
    t.integer  "formation"
    t.integer  "client"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leaders", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.integer  "agence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places_availabilities", :force => true do |t|
    t.integer  "place_id"
    t.integer  "formation_id"
    t.datetime "date_begin"
    t.datetime "date_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.timestamp "date"
    t.integer   "integer"
    t.string    "type"
    t.integer   "users_number"
    t.integer   "trainer"
    t.integer   "place"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "sessions_participations", :force => true do |t|
    t.integer   "client"
    t.integer   "session"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "sessions_scores", :force => true do |t|
    t.integer   "session"
    t.integer   "client"
    t.integer   "score"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "tests_scores", :force => true do |t|
    t.timestamp "date"
    t.integer   "client"
    t.integer   "score"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "trainers_availabilities", :force => true do |t|
    t.integer  "leader_id"
    t.integer  "formation_id"
    t.datetime "date_begin"
    t.datetime "date_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "category"
    t.string   "brand"
    t.string   "model"
    t.integer  "agence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles_availabilities", :force => true do |t|
    t.integer  "vehicle_id"
    t.integer  "formation_id"
    t.datetime "date_begin"
    t.datetime "date_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
