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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120920004013) do

  create_table "budgets", :force => true do |t|
    t.string   "nc_number"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "effort_transfers", :force => true do |t|
    t.date     "date"
    t.string   "obs"
    t.integer  "transfer_id"
    t.decimal  "value",          :precision => 14, :scale => 2
    t.string   "identification"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "efforts", :force => true do |t|
    t.integer  "resource_id"
    t.string   "identification"
    t.date     "date"
    t.decimal  "value",          :precision => 14, :scale => 2
    t.string   "obs"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "natures", :force => true do |t|
    t.string   "ev"
    t.string   "esf"
    t.string   "ptres"
    t.string   "fonte"
    t.string   "nd"
    t.string   "pi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payment_transfers", :force => true do |t|
    t.date     "date"
    t.integer  "effort_transfer_id"
    t.string   "favored"
    t.string   "identify"
    t.date     "nf_date"
    t.string   "nf_number"
    t.decimal  "value",              :precision => 14, :scale => 2
    t.string   "identification"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "effort_id"
    t.string   "identification"
    t.date     "date"
    t.date     "nf_date"
    t.string   "nf_number"
    t.decimal  "value",          :precision => 14, :scale => 2
    t.string   "favored"
    t.string   "identify"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "resources", :force => true do |t|
    t.integer  "nature_id"
    t.decimal  "value",      :precision => 14, :scale => 2
    t.integer  "budget_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "transfers", :force => true do |t|
    t.string   "identification"
    t.integer  "resource_id"
    t.decimal  "value",          :precision => 14, :scale => 2
    t.integer  "unit_id"
    t.date     "date"
    t.string   "obs"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "unit_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
