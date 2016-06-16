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

ActiveRecord::Schema.define(version: 20160616092128) do

  create_table "appointment_time_votes", force: :cascade do |t|
    t.integer  "state"
    t.integer  "appointment_time_id"
    t.integer  "appointment_vote_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "appointment_time_votes", ["appointment_time_id"], name: "index_appointment_time_votes_on_appointment_time_id"
  add_index "appointment_time_votes", ["appointment_vote_id"], name: "index_appointment_time_votes_on_appointment_vote_id"

  create_table "appointment_times", force: :cascade do |t|
    t.datetime "time"
    t.integer  "appointment_id"
  end

  add_index "appointment_times", ["appointment_id"], name: "index_appointment_times_on_appointment_id"

  create_table "appointment_votes", force: :cascade do |t|
    t.integer  "appointment_id"
    t.integer  "user_id"
    t.string   "auth_token"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "appointment_votes", ["appointment_id"], name: "index_appointment_votes_on_appointment_id"
  add_index "appointment_votes", ["user_id"], name: "index_appointment_votes_on_user_id"

  create_table "appointments", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "auth_token"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
