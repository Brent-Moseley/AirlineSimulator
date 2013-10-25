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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131023131150) do

  create_table "airlins", :force => true do |t|
    t.string   "name"
    t.integer  "balance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "airport_id"
  end

  create_table "airports", :force => true do |t|
    t.string   "name"
    t.string   "abbrev"
    t.string   "city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "flights", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.datetime "leaves"
    t.datetime "arrives"
    t.boolean  "full"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "airlin_id"
  end

  create_table "legs", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.boolean  "full"
    t.integer  "next"
    t.integer  "prev"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "flight_id"
  end

  create_table "planes", :force => true do |t|
    t.string   "type"
    t.integer  "in_service_since"
    t.date     "last_service"
    t.integer  "seats"
    t.boolean  "luxury"
    t.integer  "incidents"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.float    "lat"
    t.float    "lng"
    t.float    "vx"
    t.float    "vy"
    t.integer  "airlin_id"
  end

end
