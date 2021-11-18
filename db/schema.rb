# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_17_174018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone1"
    t.string "phone2"
    t.string "email"
    t.string "l_r_measurement"
    t.string "l_l_measurement"
    t.string "l_add_measurement"
    t.string "adress"
    t.date "last_d_v_date"
    t.string "doctor_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "return_date"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "user_search_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "cost_in"
    t.integer "price_out"
    t.string "color"
    t.integer "d1"
    t.integer "d2"
    t.integer "d3"
    t.integer "d4"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.string "frame_name"
    t.string "r_measurement"
    t.string "l_measurement"
    t.string "add_measurement"
    t.string "Kind_of_glasses"
    t.string "glasses_type"
    t.string "indice"
    t.date "last_d_v_date"
    t.string "image_doctor_visit"
    t.integer "glass_Cost_in"
    t.integer "glass_price_out"
    t.integer "total_price"
    t.string "comment"
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "return_date"
    t.boolean "completed", default: false
    t.bigint "item_id", null: false
    t.integer "amount_paid"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["item_id"], name: "index_orders_on_item_id"
  end

  create_table "user_searches", force: :cascade do |t|
    t.string "reddit_username"
    t.string "top_listing_name"
    t.integer "top_listing_likes"
    t.string "top_listing_link"
    t.string "fav_sub_name"
    t.string "most_children_name"
    t.integer "Most_children_likes"
    t.string "most_children_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "items"
end
