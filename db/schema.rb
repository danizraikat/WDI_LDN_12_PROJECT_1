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

ActiveRecord::Schema.define(version: 20150416141331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.boolean  "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campuses", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "campus_location_image"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.integer  "campus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "course_type_id"
    t.integer  "classroom_id"
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.integer  "capacity"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "password_confirmation"
    t.string   "gender"
    t.string   "tel_number"
    t.string   "profile_image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
