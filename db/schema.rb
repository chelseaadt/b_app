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

ActiveRecord::Schema.define(version: 20150514090255) do

  create_table "accounts", force: true do |t|
    t.integer "supplier_id"
    t.string  "account_number"
  end

  add_index "accounts", ["supplier_id"], name: "index_accounts_on_supplier_id"

  create_table "customers", force: true do |t|
    t.string "name"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.datetime "order_date"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "suppliers", force: true do |t|
    t.string "name"
  end

end
