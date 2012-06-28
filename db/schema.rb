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

ActiveRecord::Schema.define(:version => 20120628162649) do

  create_table "contestants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contestants_contests", :id => false, :force => true do |t|
    t.integer "contestant_id"
    t.integer "contest_id"
  end

  create_table "contests", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contests_judges", :id => false, :force => true do |t|
    t.integer "judge_id"
    t.integer "contest_id"
  end

  create_table "judges", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rounds", :force => true do |t|
    t.string   "name"
    t.integer  "cycle"
    t.integer  "place"
    t.integer  "contest_id"
    t.integer  "contestant_id"
    t.integer  "judge_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "scores", :force => true do |t|
    t.integer  "place"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "contestant_id"
    t.integer  "judge_id"
    t.integer  "round_id"
  end

end
