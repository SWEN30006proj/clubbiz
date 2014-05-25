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

ActiveRecord::Schema.define(version: 20140525103028) do

  create_table "events", force: true do |t|
    t.string   "title"
    t.time     "start_time"
    t.time     "finish_time"
    t.string   "venue"
    t.string   "event_type"
    t.string   "event_url"
    t.string   "image_urls"
    t.integer  "max_num_tickets"
    t.string   "ticket_price"
    t.datetime "ticket_start_date_time"
    t.datetime "ticket_end_date_time"
    t.string   "ticket_purchase_pickup_information"
    t.string   "societies_shared_with"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.string   "code"
    t.integer  "event_id"
    t.integer  "member_id"
    t.integer  "ticket_type"
    t.integer  "ticket_quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "societies", force: true do |t|
    t.string   "society_name"
    t.string   "registration_number"
    t.string   "club_website"
    t.string   "club_nickname"
    t.string   "password"
    t.string   "president_name"
    t.string   "president_phone_number"
    t.string   "president_email"
    t.string   "treasurer_name"
    t.string   "treasurer_phone_number"
    t.string   "treasurer_email"
    t.string   "club_biz_administrator_name"
    t.string   "club_biz_administrator_phone_number"
    t.string   "club_biz_administrator_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "school"
    t.string   "studentid"
    t.string   "clubs"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
