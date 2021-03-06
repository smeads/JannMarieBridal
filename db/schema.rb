# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160907215349) do

  create_table "user_profiles", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "shipping_address"
    t.string   "wedding_date"
    t.string   "bridals_date"
    t.string   "height"
    t.string   "over_bust"
    t.string   "bust"
    t.string   "under_bust"
    t.string   "bra_size"
    t.string   "waist"
    t.string   "hip"
    t.string   "natural_waist"
    t.string   "shoulder_to_shoulder"
    t.string   "shoulder_to_waist"
    t.string   "waist_to_floor"
    t.string   "rise"
    t.string   "sleeve_length"
    t.string   "arm_hole"
    t.string   "bicep"
    t.string   "forearm"
    t.boolean  "deposit"
    t.boolean  "paid_in_full"
    t.boolean  "shipping"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
