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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170114225042) do

  create_table "addresses", force: :cascade do |t|
    t.string   "pickup_location"
    t.string   "city"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "license_no"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "vehicle_id"
    t.index ["vehicle_id"], name: "index_photos_on_vehicle_id"
  end

  create_table "trips", force: :cascade do |t|
    t.datetime "from"
    t.datetime "to"
    t.integer  "number_of_people"
    t.decimal  "initial_expense"
    t.boolean  "active"
    t.boolean  "payment_type"
    t.boolean  "paid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "driver_id"
    t.integer  "vehicle_id"
    t.integer  "address_id"
    t.index ["address_id"], name: "index_trips_on_address_id"
    t.index ["driver_id"], name: "index_trips_on_driver_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
    t.index ["vehicle_id"], name: "index_trips_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "number"
    t.string   "region"
    t.string   "vehicle_type"
    t.integer  "max_people"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "available"
    t.integer  "driver_id"
    t.string   "price"
    t.index ["driver_id"], name: "index_vehicles_on_driver_id"
  end

end
