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

ActiveRecord::Schema[7.0].define(version: 2024_02_28_072128) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "mobile"
    t.string "gender"
    t.bigint "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_passengers_on_ticket_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "station_name"
    t.string "arrival"
    t.string "departure"
    t.string "distance"
    t.string "seats"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_stations_on_route_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "from"
    t.string "to"
    t.string "date"
    t.string "mobile"
    t.string "email"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_tickets_on_route_id"
  end

  add_foreign_key "passengers", "tickets"
  add_foreign_key "stations", "routes"
  add_foreign_key "tickets", "routes"
end
