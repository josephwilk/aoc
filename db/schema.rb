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

ActiveRecord::Schema.define(:version => 20110927091527) do

  create_table "bookings", :force => true do |t|
    t.integer  "passenger_id"
    t.text     "passport"
    t.text     "eticket"
    t.text     "flight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checkins", :force => true do |t|
    t.text     "airline"
    t.text     "flight"
    t.text     "passenger"
    t.text     "seat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passengers", :force => true do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "risk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
