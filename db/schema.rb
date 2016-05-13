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

ActiveRecord::Schema.define(version: 20160512205227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "available_units", force: :cascade do |t|
    t.string   "unit_id"
    t.string   "sq_ft"
    t.string   "market_rent"
    t.string   "bedroom"
    t.string   "bathroom"
    t.string   "laundry"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "craigslist_title"
    t.text     "short_description"
    t.text     "features"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.date     "lease_end_date"
    t.text     "prospects"
  end

  create_table "brokers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile"
    t.string   "direct_phone"
    t.string   "company"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "commercial_leads", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "contact_type"
    t.text     "description"
    t.string   "source"
    t.date     "contact_date"
    t.string   "properties_referenced"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "use"
    t.text     "notes"
    t.string   "broker"
    t.text     "properties_suggested"
    t.text     "properties_shown"
    t.date     "appointment_date"
  end

  create_table "prequalifications", force: :cascade do |t|
    t.date     "earliest_move_in"
    t.date     "latest_move_in"
    t.string   "price_min"
    t.string   "price_max"
    t.string   "people"
    t.text     "pets"
    t.string   "profession"
    t.string   "employer"
    t.string   "income"
    t.string   "combined_income"
    t.string   "preference"
    t.text     "preferences"
    t.text     "availability"
    t.boolean  "smoker"
    t.date     "prequalification_date"
    t.integer  "residential_lead_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "prequalification_on_file"
    t.string   "qualification_on_file"
  end

  add_index "prequalifications", ["residential_lead_id"], name: "index_prequalifications_on_residential_lead_id", using: :btree

  create_table "residential_applications", force: :cascade do |t|
    t.date     "date_received"
    t.date     "date_completed"
    t.boolean  "fee_paid"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "residential_lead_id"
  end

  add_index "residential_applications", ["residential_lead_id"], name: "index_residential_applications_on_residential_lead_id", using: :btree

  create_table "residential_leads", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "contact_type"
    t.date     "earliest_move_in"
    t.date     "latest_move_in"
    t.string   "price_min"
    t.string   "price_max"
    t.text     "properties_referenced"
    t.string   "profession"
    t.string   "people"
    t.text     "pets"
    t.string   "income"
    t.string   "source"
    t.string   "combined_income"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.date     "contact_date"
    t.string   "employer"
    t.text     "notes"
    t.text     "preferences"
    t.text     "availability"
    t.boolean  "smoker"
    t.date     "appointment_date"
    t.time     "appointment_time"
    t.text     "spaces"
    t.date     "application_date"
    t.boolean  "application_on_file",   default: false
    t.string   "credit_score"
    t.boolean  "is_artist"
    t.text     "art_description"
    t.string   "status"
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
