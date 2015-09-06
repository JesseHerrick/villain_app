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

ActiveRecord::Schema.define(version: 20150906023912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "henchmen", force: :cascade do |t|
    t.string   "name"
    t.integer  "villain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "henchmen", ["villain_id"], name: "index_henchmen_on_villain_id", using: :btree

  create_table "sightings", force: :cascade do |t|
    t.text     "notes"
    t.integer  "villain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sightings", ["villain_id"], name: "index_sightings_on_villain_id", using: :btree

  create_table "villains", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "at_large"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "henchmen", "villains"
  add_foreign_key "sightings", "villains"
end
