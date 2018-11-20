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

ActiveRecord::Schema.define(version: 2018_11_19_183743) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manager_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "managers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.integer "manager_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_type_id"], name: "index_managers_on_manager_type_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "vehicle_id"
    t.integer "customer_id"
    t.integer "sales_person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "term"
    t.decimal "finance_amount"
    t.decimal "monthly_payment"
    t.decimal "wholesale_price", precision: 10, scale: 3
    t.decimal "markup_price", precision: 10, scale: 3
    t.decimal "total_price", precision: 10, scale: 3
    t.decimal "tax", precision: 10, scale: 3
    t.decimal "down_payment", precision: 10, scale: 3
    t.decimal "interest_rate", precision: 10, scale: 3
    t.index ["customer_id"], name: "index_quotes_on_customer_id"
    t.index ["sales_person_id"], name: "index_quotes_on_sales_person_id"
    t.index ["vehicle_id"], name: "index_quotes_on_vehicle_id"
  end

  create_table "sales_people", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.integer "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_sales_people_on_manager_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vin"
    t.integer "color_id"
    t.integer "type_id"
    t.integer "year"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "model_id"
    t.index ["color_id"], name: "index_vehicles_on_color_id"
    t.index ["model_id"], name: "index_vehicles_on_model_id"
    t.index ["type_id"], name: "index_vehicles_on_type_id"
  end

end
