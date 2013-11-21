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

ActiveRecord::Schema.define(version: 20131121030227) do

  create_table "contents", force: true do |t|
    t.text     "bannerDescription"
    t.text     "teachingAims"
    t.text     "faculty"
    t.text     "courseDescriptionAndPrice"
    t.text     "relationships"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_description_and_prices", force: true do |t|
    t.string   "course_name"
    t.string   "course_hour"
    t.string   "course_price"
    t.string   "course_teacher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.string   "team_name"
    t.string   "team_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "student_name"
    t.string   "obtain_courses"
    t.string   "contact_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
