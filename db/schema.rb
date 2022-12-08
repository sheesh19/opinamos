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

ActiveRecord::Schema[7.0].define(version: 2022_11_17_022608) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "category"
    t.string "subcategory"
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "address"
    t.string "country"
    t.string "website"
    t.text "description"
    t.string "image"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "linkedin"
    t.string "tiktok"
    t.string "timezone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "status"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_invitations_on_company_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "image_link"
    t.string "additional_image_link"
    t.string "mobile_link"
    t.string "availability"
    t.date "availability_date"
    t.float "cost_of_goods_sold"
    t.date "expiration_date"
    t.float "price"
    t.float "sale_price"
    t.string "currency"
    t.date "sale_price_effective_date"
    t.string "unit_pricing_measure"
    t.string "unit_pricing_base_measure"
    t.string "installment"
    t.string "subscription_cost"
    t.string "google_product_category"
    t.string "product_type"
    t.string "brand"
    t.integer "gtin"
    t.string "sku"
    t.string "mpn"
    t.string "identifier_exists"
    t.string "Condition"
    t.string "adult"
    t.string "multipack"
    t.string "is_bundle"
    t.string "energy_efficiency_class"
    t.string "min_energy_efficiency_class"
    t.string "max_energy_efficiency_class"
    t.string "age_group"
    t.string "color"
    t.string "gender"
    t.string "material"
    t.string "pattern"
    t.string "size"
    t.string "size_type"
    t.string "size_system"
    t.string "item_group_id"
    t.string "product_lenght"
    t.string "product_widht"
    t.string "product_height"
    t.string "product_weight"
    t.string "product_detail"
    t.string "product_highlight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_products_on_company_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "user_id"
    t.bigint "company_id", null: false
    t.string "order_id"
    t.string "source"
    t.string "video"
    t.text "description"
    t.integer "score"
    t.string "verification_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_reviews_on_company_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "role"
    t.bigint "company_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "companies", "users"
  add_foreign_key "invitations", "companies"
  add_foreign_key "products", "companies"
  add_foreign_key "reviews", "companies"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "companies"
end
