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

ActiveRecord::Schema.define(version: 20170729023228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_deals", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "user_id"
    t.integer "condition"
    t.integer "status"
    t.datetime "publish_at"
    t.string "edition"
    t.datetime "release_date"
    t.text "description"
    t.decimal "price"
    t.datetime "return_date"
    t.bigint "deal_id"
    t.integer "deal_type"
    t.datetime "deal_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_deals_on_book_id"
    t.index ["user_id"], name: "index_book_deals_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "pages"
    t.bigint "publisher_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_books_on_category_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "book_deal_id"
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_deal_id"], name: "index_comments_on_book_deal_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "book_deal_id"
    t.bigint "user_id"
    t.integer "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_deal_id"], name: "index_ratings_on_book_deal_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "fullname"
    t.string "phone"
    t.string "username"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "book_deals", "books"
  add_foreign_key "book_deals", "users"
  add_foreign_key "books", "categories"
  add_foreign_key "books", "publishers"
  add_foreign_key "comments", "book_deals"
  add_foreign_key "comments", "users"
  add_foreign_key "ratings", "book_deals"
  add_foreign_key "ratings", "users"
end
