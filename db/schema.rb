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

ActiveRecord::Schema.define(version: 20150822163905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: true do |t|
    t.integer  "question1"
    t.integer  "question2"
    t.integer  "question3"
    t.integer  "question4"
    t.integer  "question5"
    t.integer  "question6"
    t.integer  "question7"
    t.integer  "question8"
    t.integer  "question9"
    t.integer  "question10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end