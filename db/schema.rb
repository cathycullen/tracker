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

ActiveRecord::Schema.define(version: 20161101021903) do

  create_table "coordinators", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "participant_id"
    t.integer  "registry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["participant_id"], name: "index_enrollments_on_participant_id"
  add_index "enrollments", ["registry_id"], name: "index_enrollments_on_registry_id"

  create_table "participants", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "dob"
    t.date     "enrollment_date"
    t.string   "phone"
    t.string   "email"
    t.string   "method_of_contact"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "participants", ["name", "gender", "dob"], name: "index_participants_on_name_and_gender_and_dob"

  create_table "registries", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registries", ["name", "location"], name: "index_registries_on_name_and_location"

  create_table "registry_coordinators", force: true do |t|
    t.integer  "coordinator_id"
    t.integer  "registry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registry_coordinators", ["coordinator_id"], name: "index_registry_coordinators_on_coordinator_id"
  add_index "registry_coordinators", ["registry_id"], name: "index_registry_coordinators_on_registry_id"

end
