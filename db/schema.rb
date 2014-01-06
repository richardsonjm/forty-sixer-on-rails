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

ActiveRecord::Schema.define(version: 20131201141728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mountains", force: true do |t|
    t.integer  "rank"
    t.string   "name"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trek_mountains", force: true do |t|
    t.integer  "trek_id"
    t.integer  "mountain_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trek_mountains", ["mountain_id"], name: "index_trek_mountains_on_mountain_id", using: :btree
  add_index "trek_mountains", ["trek_id"], name: "index_trek_mountains_on_trek_id", using: :btree

  create_table "treks", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "diff"
    t.float    "distance"
    t.string   "duration"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_mountains", force: true do |t|
    t.integer  "user_id"
    t.integer  "mountain_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_mountains", ["mountain_id"], name: "index_user_mountains_on_mountain_id", using: :btree
  add_index "user_mountains", ["user_id"], name: "index_user_mountains_on_user_id", using: :btree

  create_table "user_treks", force: true do |t|
    t.integer  "user_id"
    t.integer  "trek_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_treks", ["trek_id"], name: "index_user_treks_on_trek_id", using: :btree
  add_index "user_treks", ["user_id"], name: "index_user_treks_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
