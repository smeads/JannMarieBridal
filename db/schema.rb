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

ActiveRecord::Schema.define(version: 20160901220230) do

  create_table "user_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "shipping_address"
    t.string   "wedding_date"
    t.string   "bridals_date"
    t.string   "height"
    t.string   "over_bust"
    t.string   "bust"
    t.string   "under_bust"
    t.string   "braw_size"
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
  end

end
