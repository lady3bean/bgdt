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

ActiveRecord::Schema.define(version: 20150428211142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string "cat"
  end

  create_table "entries", force: :cascade do |t|
    t.text     "desc"
    t.decimal  "amount",            precision: 10, scale: 2
    t.integer  "credit_account_id"
    t.integer  "debit_account_id"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "category_id"
  end

  add_index "entries", ["category_id"], name: "index_entries_on_category_id", using: :btree
  add_index "entries", ["credit_account_id"], name: "index_entries_on_credit_account_id", using: :btree
  add_index "entries", ["debit_account_id"], name: "index_entries_on_debit_account_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
