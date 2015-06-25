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

ActiveRecord::Schema.define(version: 20150625101318) do

  create_table "agents", force: :cascade do |t|
    t.string   "staff_no",   limit: 32, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 512, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "landlords", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "gender",     null: false
    t.date     "dob",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leases", force: :cascade do |t|
    t.integer  "agent_id",    null: false
    t.integer  "property_id", null: false
    t.date     "starts",      null: false
    t.date     "expires",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "leases", ["agent_id"], name: "index_leases_on_agent_id"
  add_index "leases", ["property_id"], name: "index_leases_on_property_id"

  create_table "properties", force: :cascade do |t|
    t.string   "property_no", limit: 32, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 512, null: false
    t.integer  "country_id",             null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "name",             null: false
    t.string   "gender",           null: false
    t.date     "dob",              null: false
    t.integer  "no_of_dependents"
    t.string   "occupation"
    t.float    "annual_income"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
