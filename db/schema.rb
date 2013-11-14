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

ActiveRecord::Schema.define(version: 20131114022023) do

  create_table "mountains", force: true do |t|
    t.integer  "rank"
    t.string   "name"
    t.integer  "height"
    t.integer  "trek_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  add_index "user_mountains", ["mountain_id"], name: "index_user_mountains_on_mountain_id"
  add_index "user_mountains", ["user_id"], name: "index_user_mountains_on_user_id"

  create_table "user_treks", force: true do |t|
    t.integer  "user_id"
    t.integer  "trek_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end