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

ActiveRecord::Schema.define(version: 20151214172542) do

  create_table "areas", force: :cascade do |t|
    t.string   "area_name"
    t.string   "area_manager"
    t.integer  "number_of_employees"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "authenticates", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "area_id"
    t.string   "category"
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "position"
    t.string   "email"
    t.string   "phone"
    t.date     "birthdate"
    t.boolean  "sex"
    t.string   "company_adress"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "logs", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "site_users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "Company_name"
    t.string   "contact_name"
    t.string   "phone_a"
    t.string   "phone_b"
    t.string   "email"
    t.string   "description"
    t.string   "webpage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "course_name"
    t.string   "topic"
    t.string   "expositor"
    t.datetime "start_date"
    t.time     "duration"
    t.integer  "attendance_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "birthdate"
    t.integer  "age"
    t.string   "phone"
    t.string   "emergency_number"
    t.string   "curp"
    t.string   "imms"
    t.string   "rfc"
    t.string   "employee_id"
    t.date     "date_of_admission"
    t.integer  "area_id"
    t.string   "boss"
    t.integer  "salary"
    t.integer  "role_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
