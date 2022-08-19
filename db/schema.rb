# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_19_225559) do

  create_table "stations", force: :cascade do |t|
    t.boolean "allowed"
    t.string "country_code"
    t.string "city_code"
    t.string "province_state_code"
    t.string "time_zone_code"
    t.string "latitude"
    t.string "longitude"
    t.string "currency_code"
    t.boolean "active"
    t.string "full_name"
    t.string "station_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end