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

ActiveRecord::Schema.define(version: 20150508224032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.float    "abv"
    t.string   "availability"
    t.text     "description"
    t.text     "food_pairings"
    t.string   "glassware"
    t.integer  "serving_temp"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "review_id"
    t.integer  "brewer_id"
    t.integer  "style_id"
  end

  add_index "beers", ["brewer_id"], name: "index_beers_on_brewer_id", using: :btree
  add_index "beers", ["review_id"], name: "index_beers_on_review_id", using: :btree

  create_table "brewers", force: :cascade do |t|
    t.string   "brewery"
    t.string   "email"
    t.string   "address"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "website"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "styles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "last_name"
  end

  add_foreign_key "beers", "brewers"
  add_foreign_key "beers", "reviews"
  add_foreign_key "reviews", "users"
end
