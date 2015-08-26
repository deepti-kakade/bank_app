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

ActiveRecord::Schema.define(version: 20150826063441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fixed_deposits", force: :cascade do |t|
    t.string   "account_number"
    t.integer  "deposit_amount"
    t.string   "type_of_deposit"
    t.integer  "tenure_of_deposit_years",  default: 0
    t.integer  "tenure_of_deposit_months", default: 0
    t.integer  "tenure_of_deposit_days",   default: 0
    t.string   "pan"
    t.integer  "maturity_proceed"
    t.string   "contact_no"
    t.string   "email"
    t.integer  "age"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "fixed_deposits", ["account_number"], name: "index_fixed_deposits_on_account_number", using: :btree
  add_index "fixed_deposits", ["age"], name: "index_fixed_deposits_on_age", using: :btree
  add_index "fixed_deposits", ["email"], name: "index_fixed_deposits_on_email", using: :btree
  add_index "fixed_deposits", ["pan"], name: "index_fixed_deposits_on_pan", using: :btree

end
