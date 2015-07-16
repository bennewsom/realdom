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

ActiveRecord::Schema.define(version: 20150709103018) do

  create_table "agents", force: :cascade do |t|
    t.string   "staff_no",   limit: 32, null: false
    t.string   "first_name"
    t.string   "last_name"
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
    t.integer  "tenant_id",   null: false
    t.date     "starts",      null: false
    t.date     "expires",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "leases", ["agent_id"], name: "index_leases_on_agent_id"
  add_index "leases", ["property_id"], name: "index_leases_on_property_id"
  add_index "leases", ["tenant_id"], name: "index_leases_on_tenant_id"

  create_table "properties", force: :cascade do |t|
    t.string   "property_no", limit: 32, null: false
    t.string   "street_1",               null: false
    t.string   "street_2"
    t.string   "suburb"
    t.string   "post_code"
    t.integer  "state_id",               null: false
    t.integer  "landlord_id",            null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "properties", ["landlord_id"], name: "index_properties_on_landlord_id"
  add_index "properties", ["state_id"], name: "index_properties_on_state_id"

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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
