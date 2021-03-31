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

ActiveRecord::Schema.define(version: 2021_03_29_221329) do

  create_table "auctionbids", force: :cascade do |t|
    t.float "bid"
    t.integer "user_id", null: false
    t.integer "mtgcard_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mtgcard_id"], name: "index_auctionbids_on_mtgcard_id"
    t.index ["user_id"], name: "index_auctionbids_on_user_id"
  end

  create_table "mtgcards", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "year"
    t.float "overall_condition"
    t.float "centering"
    t.float "corners"
    t.float "edges"
    t.float "surface"
    t.integer "card_serial_number"
    t.string "graded_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "auctionbids", "mtgcards"
  add_foreign_key "auctionbids", "users"
end
