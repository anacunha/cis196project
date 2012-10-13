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

ActiveRecord::Schema.define(:version => 20121001050240) do

  create_table "games", :force => true do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "developer"
    t.string   "publisher"
    t.date     "release_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "date_of_birth"
    t.string   "telephone"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "video_game_consoles", :force => true do |t|
    t.string   "name"
    t.date     "release_date"
    t.string   "manufacturer"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end