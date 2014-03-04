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

ActiveRecord::Schema.define(version: 20140304082729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counties", force: true do |t|
    t.integer  "state_id"
    t.string   "abbr"
    t.string   "name"
    t.string   "county_seat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "counties", ["name"], name: "index_counties_on_name", using: :btree
  add_index "counties", ["state_id"], name: "index_counties_on_state_id", using: :btree

  create_table "pre_launch_sign_up_emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provisions", force: true do |t|
    t.string   "tag"
    t.string   "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "reviews", force: true do |t|
    t.string   "body"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "reviewer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "abbr",       limit: 2
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["abbr"], name: "index_states_on_abbr", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "postal_code"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zipcodes", force: true do |t|
    t.string   "code"
    t.string   "city"
    t.integer  "state_id"
    t.integer  "county_id"
    t.string   "area_code"
    t.decimal  "lat",        precision: 15, scale: 10
    t.decimal  "lon",        precision: 15, scale: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zipcodes", ["code"], name: "index_zipcodes_on_code", using: :btree
  add_index "zipcodes", ["county_id"], name: "index_zipcodes_on_county_id", using: :btree
  add_index "zipcodes", ["lat", "lon"], name: "index_zipcodes_on_lat_and_lon", using: :btree
  add_index "zipcodes", ["state_id"], name: "index_zipcodes_on_state_id", using: :btree

end
