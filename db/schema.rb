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

ActiveRecord::Schema.define(version: 20150820010603) do

  create_table "diets", force: :cascade do |t|
    t.string   "name"
    t.integer  "total_calories_day"
    t.integer  "foods_groups_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "diets", ["foods_groups_id"], name: "index_diets_on_foods_groups_id"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "unit"
    t.integer  "cuantity"
    t.integer  "calories"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "foods_groups", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "foods_groups", ["food_id"], name: "index_foods_groups_on_food_id"
  add_index "foods_groups", ["group_id"], name: "index_foods_groups_on_group_id"

  create_table "groups", force: :cascade do |t|
    t.string   "time"
    t.string   "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
