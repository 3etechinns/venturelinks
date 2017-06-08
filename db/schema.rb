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

ActiveRecord::Schema.define(version: 20170607050749) do

  create_table "cofoundings", force: :cascade do |t|
    t.integer  "founder_id"
    t.integer  "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "startup_id"
    t.integer  "founder_id"
    t.integer  "venturefund_id"
    t.integer  "partner_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "founders", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "usertype"
    t.string   "username"
    t.string   "company"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_founders_on_email", unique: true
    t.index ["reset_password_token"], name: "index_founders_on_reset_password_token", unique: true
  end

  create_table "partners", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "usertype"
    t.integer  "venturefund_id"
    t.string   "username"
    t.string   "company"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_partners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_partners_on_reset_password_token", unique: true
  end

  create_table "startups", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "address"
    t.float    "funding"
    t.string   "industry"
    t.string   "intro"
    t.string   "founder"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "venturefunds", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "address"
    t.float    "funding"
    t.string   "industry"
    t.string   "intro"
    t.string   "partner"
    t.string   "portfolio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
