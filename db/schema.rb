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

ActiveRecord::Schema.define(version: 2020_02_02_083907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rows", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "screen_id", null: false
    t.index ["screen_id"], name: "index_rows_on_screen_id"
  end

  create_table "screens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_screens_on_name", unique: true
  end

  create_table "seats", force: :cascade do |t|
    t.integer "number"
    t.boolean "aisle"
    t.boolean "reserved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "row_id", null: false
    t.index ["row_id"], name: "index_seats_on_row_id"
  end

  add_foreign_key "rows", "screens"
  add_foreign_key "seats", "rows"
end
