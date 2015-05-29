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

ActiveRecord::Schema.define(version: 20150529170709) do

  create_table "accounts", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "classrooms", force: :cascade do |t|
    t.integer  "form"
    t.string   "stream"
    t.string   "class_teacher"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "libraries", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "libraries", ["email"], name: "index_libraries_on_email", unique: true
  add_index "libraries", ["reset_password_token"], name: "index_libraries_on_reset_password_token", unique: true

  create_table "parents", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "parents", ["email"], name: "index_parents_on_email", unique: true
  add_index "parents", ["reset_password_token"], name: "index_parents_on_reset_password_token", unique: true

  create_table "pay_fees", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "admission_number"
    t.integer  "form"
    t.string   "stream"
    t.integer  "amount"
    t.string   "pay_method"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pay_others", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "admission_number"
    t.integer  "form"
    t.string   "stream"
    t.integer  "amount"
    t.string   "pay_method"
    t.string   "payment_for"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "full_name"
    t.date     "birth_date"
    t.string   "gender"
    t.string   "nationality"
    t.integer  "form"
    t.string   "stream"
    t.string   "classteacher"
    t.integer  "address"
    t.integer  "phone1"
    t.integer  "phone2"
    t.string   "email"
    t.string   "town"
    t.string   "county"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "priority"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teachers", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true
  add_index "teachers", ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true

end
