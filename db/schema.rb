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

ActiveRecord::Schema.define(version: 20150818014204) do

  create_table "diets", force: :cascade do |t|
    t.string   "name"
    t.integer  "total_calories_day"
    t.integer  "id_group_food"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "unit"
    t.integer  "cuantity"
    t.integer  "calories"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "group_foods", force: :cascade do |t|
    t.string   "time"
    t.string   "day"
    t.integer  "id_food"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "group_foods", ["id_food"], name: "index_group_foods_on_id_food"

end
