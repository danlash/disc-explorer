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

ActiveRecord::Schema.define(:version => 20120627211919) do

  create_table "disc_editions", :force => true do |t|
    t.string   "plastic"
    t.string   "price"
    t.integer  "disc_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "disc_editions", ["disc_id"], :name => "index_disc_editions_on_disc_id"

  create_table "discs", :force => true do |t|
    t.string   "name"
    t.string   "manufacturer"
    t.string   "throw_type"
    t.integer  "flight_difficulty"
    t.integer  "flight_speed"
    t.integer  "flight_glide"
    t.integer  "flight_turn"
    t.integer  "flight_fade"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
