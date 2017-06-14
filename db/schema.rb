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

ActiveRecord::Schema.define(version: 20170613160256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charges", force: :cascade do |t|
    t.integer  "amount"
    t.integer  "coupon_id"
    t.integer  "stripe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "code"
    t.integer  "discount_percent"
    t.datetime "expires_at"
    t.string   "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "hrservices", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "entry_service"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "ondemand_service"
    t.boolean  "hrsunit"
    t.boolean  "hrsbundle"
    t.text     "conditions",       default: [],              array: true
    t.text     "subtitle"
    t.integer  "price_cents",      default: 0,  null: false
    t.text     "comments"
    t.text     "options",                                    array: true
  end

  create_table "meetings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hrservice_id"
    t.datetime "meeting_date"
    t.string   "payment_status",   default: "en attente de paiement"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "status",           default: "à programmer"
    t.string   "meeting_location"
    t.string   "date_options",     default: [],                                    array: true
    t.text     "location_options", default: [],                                    array: true
    t.index ["hrservice_id"], name: "index_meetings_on_hrservice_id", using: :btree
    t.index ["user_id"], name: "index_meetings_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "state"
    t.string   "hrservice"
    t.integer  "amount_cents", default: 0, null: false
    t.json     "payment"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "coupon_id"
    t.string   "couponCode"
    t.index ["coupon_id"], name: "index_orders_on_coupon_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "meetings", "hrservices"
  add_foreign_key "meetings", "users"
  add_foreign_key "orders", "coupons"
end
