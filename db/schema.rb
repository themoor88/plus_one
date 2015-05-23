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

ActiveRecord::Schema.define(version: 20150522214122) do

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.text     "address_1"
    t.text     "address_2"
    t.string   "city"
    t.string   "country"
    t.string   "z_post_code"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "number_of_attendees"
    t.datetime "time"
    t.text     "description"
    t.integer  "cost"
    t.string   "image"
    t.string   "category"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
  end

  create_table "events_users", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.string  "status"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "star_rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "event_id"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer  "introvert"
    t.integer  "extrovert"
    t.integer  "positive"
    t.integer  "negative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.boolean  "admin",            default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
