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

ActiveRecord::Schema.define(version: 20151108114847) do

  create_table "datas", force: :cascade do |t|
    t.datetime "date",                   null: false
    t.string   "uid",        limit: 255, null: false
    t.float    "delta_x",    limit: 24,  null: false
    t.float    "delta_y",    limit: 24,  null: false
    t.float    "delta_z",    limit: 24,  null: false
    t.float    "longtitude", limit: 24,  null: false
    t.float    "latitude",   limit: 24,  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid", limit: 255
  end

end
