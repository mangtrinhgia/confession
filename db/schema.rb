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

ActiveRecord::Schema.define(version: 20170128133946) do

  create_table "themes", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "text_size",   limit: 4,   default: 15
    t.string   "text_color",  limit: 255, default: "#000000"
    t.string   "back_ground", limit: 255,                     null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "user_confesses", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,                         null: false
    t.string   "lover_name", limit: 255
    t.string   "lover_sex",  limit: 255
    t.string   "text_color", limit: 255,   default: "#000000"
    t.integer  "theme_id",   limit: 4,                         null: false
    t.integer  "title_size", limit: 4,     default: 30
    t.integer  "body_size",  limit: 4,     default: 14
    t.string   "cf_title",   limit: 255
    t.text     "cf_body",    limit: 65535
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name",              limit: 255, default: "", null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.integer  "role",                   limit: 4,   default: 2,  null: false
    t.integer  "created_by",             limit: 4
    t.integer  "updated_by",             limit: 4
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
