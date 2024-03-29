# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_01_31_115159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "discounts_type", null: false
    t.bigint "discounts_id", null: false
    t.index ["discounts_type", "discounts_id"], name: "index_categories_on_discounts"
  end

  create_table "customergroups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "discounts_type", null: false
    t.bigint "discounts_id", null: false
    t.index ["discounts_type", "discounts_id"], name: "index_customergroups_on_discounts"
  end

  create_table "discounts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "discountable_type", null: false
    t.bigint "discountable_id", null: false
    t.index ["discountable_type", "discountable_id"], name: "index_discounts_on_discountable"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "description"
    t.decimal "price"
    t.bigint "category_id", null: false
    t.string "discounts_type", null: false
    t.bigint "discounts_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["discounts_type", "discounts_id"], name: "index_products_on_discounts"
  end

  add_foreign_key "products", "categories"
end
