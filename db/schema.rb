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

ActiveRecord::Schema.define(version: 20160506174348) do

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

  create_table "departure_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departures", force: :cascade do |t|
    t.date     "entry_date"
    t.integer  "departure_type_id"
    t.string   "detail"
    t.integer  "total_value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "departures", ["departure_type_id"], name: "index_departures_on_departure_type_id", using: :btree

  create_table "entries", force: :cascade do |t|
    t.integer  "total_invoice_id", null: false
    t.date     "entry_date"
    t.integer  "entry_type_id"
    t.string   "observation"
    t.integer  "payment_type"
    t.integer  "deposit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "entries", ["entry_type_id"], name: "index_entries_on_entry_type_id", using: :btree
  add_index "entries", ["total_invoice_id"], name: "index_entries_on_total_invoice_id", using: :btree

  create_table "entry_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoice_details", force: :cascade do |t|
    t.integer  "invoice_id"
    t.integer  "article_id"
    t.integer  "quantity"
    t.integer  "unit_value"
    t.integer  "state_product_id"
    t.string   "observation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "invoice_details", ["article_id"], name: "index_invoice_details_on_article_id", using: :btree
  add_index "invoice_details", ["invoice_id"], name: "index_invoice_details_on_invoice_id", using: :btree
  add_index "invoice_details", ["state_product_id"], name: "index_invoice_details_on_state_product_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.integer  "number"
    t.date     "date"
    t.integer  "client_id"
    t.string   "observation"
    t.integer  "total"
    t.boolean  "null"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "invoices", ["client_id"], name: "index_invoices_on_client_id", using: :btree

  create_table "movement_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movements", force: :cascade do |t|
    t.integer  "invoice_id"
    t.date     "date"
    t.integer  "sum"
    t.integer  "movement_type_id"
    t.string   "observation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "movements", ["invoice_id"], name: "index_movements_on_invoice_id", using: :btree
  add_index "movements", ["movement_type_id"], name: "index_movements_on_movement_type_id", using: :btree

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

  create_table "rentals", force: :cascade do |t|
    t.integer  "invoice_detail_id"
    t.date     "start_date"
    t.date     "final_date"
    t.integer  "deposit"
    t.integer  "state"
    t.string   "observation"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "rentals", ["invoice_detail_id"], name: "index_rentals_on_invoice_detail_id", using: :btree

  create_table "state_products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "total_invoices", force: :cascade do |t|
    t.integer  "number"
    t.integer  "total_value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "null"
  end

  add_index "total_invoices", ["number"], name: "unique_number", unique: true, using: :btree

  add_foreign_key "articles", "product_categories"
  add_foreign_key "articles", "providers"
  add_foreign_key "departures", "departure_types"
  add_foreign_key "entries", "entry_types"
  add_foreign_key "entries", "total_invoices"
  add_foreign_key "invoice_details", "articles"
  add_foreign_key "invoice_details", "invoices"
  add_foreign_key "invoice_details", "state_products"
  add_foreign_key "invoices", "clients"
  add_foreign_key "movements", "invoices"
  add_foreign_key "movements", "movement_types"
  add_foreign_key "rentals", "invoice_details"
end
