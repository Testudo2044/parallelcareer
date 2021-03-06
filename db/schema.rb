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

ActiveRecord::Schema.define(version: 2021_10_29_070557) do

  create_table "introduced_users", force: :cascade do |t|
    t.string "introduced_user_name"
    t.string "phonenumber"
    t.text "contents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "content"
    t.integer "introduced_user_id"
    t.integer "user_id"
    t.string "area"
    t.string "reward"
    t.string "appeal"
    t.string "rcontent"
    t.string "rday"
    t.index ["introduced_user_id"], name: "index_providers_on_introduced_user_id"
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uid"
    t.integer "phonenumber"
    t.integer "introduced_user_id"
    t.integer "provider_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["introduced_user_id"], name: "index_users_on_introduced_user_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "providers", "introduced_users"
  add_foreign_key "providers", "users"
  add_foreign_key "users", "introduced_users"
end
