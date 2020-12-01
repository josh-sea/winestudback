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

ActiveRecord::Schema.define(version: 2020_12_01_060023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "country_regions", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.bigint "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_country_regions_on_country_id"
    t.index ["region_id"], name: "index_country_regions_on_region_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "recipe_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qrcodes", force: :cascade do |t|
    t.string "value"
    t.bigint "wine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wine_id"], name: "index_qrcodes_on_wine_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vintages", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wine_countries", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_wine_countries_on_country_id"
    t.index ["wine_id"], name: "index_wine_countries_on_wine_id"
  end

  create_table "wine_foods", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "food_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_wine_foods_on_food_id"
    t.index ["wine_id"], name: "index_wine_foods_on_wine_id"
  end

  create_table "wine_types", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_id"], name: "index_wine_types_on_type_id"
    t.index ["wine_id"], name: "index_wine_types_on_wine_id"
  end

  create_table "wine_vintages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "wine_id", null: false
    t.bigint "vintage_id", null: false
    t.index ["vintage_id"], name: "index_wine_vintages_on_vintage_id"
    t.index ["wine_id"], name: "index_wine_vintages_on_wine_id"
  end

  create_table "wine_wineries", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "winery_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wine_id"], name: "index_wine_wineries_on_wine_id"
    t.index ["winery_id"], name: "index_wine_wineries_on_winery_id"
  end

  create_table "wineries", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_wineries_on_country_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.date "drink_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "country_regions", "countries"
  add_foreign_key "country_regions", "regions"
  add_foreign_key "qrcodes", "wines"
  add_foreign_key "wine_countries", "countries"
  add_foreign_key "wine_countries", "wines"
  add_foreign_key "wine_foods", "foods"
  add_foreign_key "wine_foods", "wines"
  add_foreign_key "wine_types", "types"
  add_foreign_key "wine_types", "wines"
  add_foreign_key "wine_vintages", "vintages"
  add_foreign_key "wine_vintages", "wines"
  add_foreign_key "wine_wineries", "wineries"
  add_foreign_key "wine_wineries", "wines"
  add_foreign_key "wineries", "countries"
end
