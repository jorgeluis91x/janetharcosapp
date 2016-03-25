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

ActiveRecord::Schema.define(version: 20160324184605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "reference"
    t.integer  "product_category_id"
    t.string   "detail"
    t.integer  "quantity"
    t.string   "size"
    t.integer  "provider_id"
    t.integer  "purchase_value"
    t.integer  "sales_value"
    t.integer  "rental_value"
    t.integer  "status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "articles", ["product_category_id"], name: "index_articles_on_product_category_id", using: :btree
  add_index "articles", ["provider_id"], name: "index_articles_on_provider_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "identification"
    t.string   "name"
    t.string   "direction"
    t.string   "phone"
    t.string   "email"
    t.date     "birthdate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "initial"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "product_categories"
  add_foreign_key "articles", "providers"
end
