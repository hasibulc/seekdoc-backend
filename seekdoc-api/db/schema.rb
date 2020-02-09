# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_09_203422) do

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "bio"
    t.float "location_lat"
    t.float "location_long"
    t.string "location_name"
    t.string "location_street"
    t.string "location_city"
    t.string "location_state"
    t.integer "location_zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_favorites", force: :cascade do |t|
    t.integer "user_id"
    t.string "doctor_fn"
    t.string "doctor_ln"
    t.string "gender"
    t.string "bio"
    t.float "location_lat"
    t.float "location_long"
    t.string "location_name"
    t.string "location_street"
    t.string "location_city"
    t.string "location_state"
    t.integer "location_zip"
    t.string "rating"
    t.string "review"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
