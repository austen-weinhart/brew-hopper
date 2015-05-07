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

ActiveRecord::Schema.define(version: 20150506220457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "style"
    t.string   "brewer"
    t.float    "abv"
    t.string   "availability"
    t.text     "description"
    t.text     "food_pairings"
    t.string   "glassware"
    t.integer  "serving_temp"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "brewers", force: :cascade do |t|
    t.string   "brewery"
    t.string   "email"
    t.string   "address"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string   "pale_lager"
    t.string   "pilsner"
    t.string   "light_lager"
    t.string   "dark_lager"
    t.string   "brown_ale"
    t.string   "porter"
    t.string   "stout"
    t.string   "witbier"
    t.string   "other"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "last_name"
  end

end
