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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140422181804) do

  create_table "courses", force: true do |t|
    t.string   "city_name"
    t.integer  "student_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "city_name"
=======

ActiveRecord::Schema.define(version: 20140423222708) do

ActiveRecord::Schema.define(version: 20140423132925) do


  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"

    t.integer  "location_id"

  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "courses_id"
    t.integer  "student_id"
>>>>>>> upstream/master
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
<<<<<<< HEAD
    t.binary   "picture"
=======
>>>>>>> upstream/master
    t.text     "bio"
    t.string   "social_1"
    t.string   "social_2"
    t.string   "social_3"
<<<<<<< HEAD
    t.integer  "location_id"
=======
>>>>>>> upstream/master
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
