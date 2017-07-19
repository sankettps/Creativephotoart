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

ActiveRecord::Schema.define(version: 20170719171303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ad_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "app_adds", force: :cascade do |t|
    t.bigint "app_id"
    t.string "name"
    t.string "ad_mob_id"
    t.string "fb_id"
    t.boolean "is_shown", default: true
    t.boolean "is_fb"
    t.boolean "is_ad_mob", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ad_type_id"
    t.index ["ad_type_id"], name: "index_app_adds_on_ad_type_id"
    t.index ["app_id"], name: "index_app_adds_on_app_id"
  end

  create_table "app_devices", force: :cascade do |t|
    t.bigint "device_id"
    t.bigint "app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_devices_on_app_id"
    t.index ["device_id"], name: "index_app_devices_on_device_id"
  end

  create_table "app_frames", force: :cascade do |t|
    t.bigint "app_id"
    t.string "frame"
    t.boolean "is_visible", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_frames_on_app_id"
  end

  create_table "apps", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo"
  end

  create_table "devices", force: :cascade do |t|
    t.string "device_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "app_adds", "ad_types"
  add_foreign_key "app_adds", "apps"
  add_foreign_key "app_devices", "apps"
  add_foreign_key "app_devices", "devices"
  add_foreign_key "app_frames", "apps"
end
