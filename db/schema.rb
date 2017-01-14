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

ActiveRecord::Schema.define(version: 20170105204641) do

  create_table "complaints", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",      null: false
    t.string   "category",   null: false
    t.integer  "user_id"
    t.integer  "sdo_id"
    t.integer  "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
    t.string   "details"
    t.index ["category"], name: "index_complaints_on_category", using: :btree
    t.index ["sdo_id"], name: "index_complaints_on_sdo_id", using: :btree
    t.index ["user_id"], name: "index_complaints_on_user_id", using: :btree
    t.index ["worker_id"], name: "index_complaints_on_worker_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "cost"
    t.integer  "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "total_cost"
    t.index ["name"], name: "index_items_on_name", using: :btree
    t.index ["worker_id"], name: "index_items_on_worker_id", using: :btree
  end

  create_table "sdos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "cnic"
    t.string   "email"
    t.integer  "complaint_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["complaint_id"], name: "index_sdos_on_complaint_id", using: :btree
    t.index ["name"], name: "index_sdos_on_name", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "email"
    t.string   "phone"
    t.string   "profession",             default: "", null: false
    t.string   "address",                default: "", null: false
    t.integer  "complaint_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "user_type"
    t.index ["address"], name: "index_users_on_address", using: :btree
    t.index ["complaint_id"], name: "index_users_on_complaint_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["first_name"], name: "index_users_on_first_name", using: :btree
    t.index ["last_name"], name: "index_users_on_last_name", using: :btree
    t.index ["profession"], name: "index_users_on_profession", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "workers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "full_name",    null: false
    t.string   "cnic"
    t.string   "phone"
    t.integer  "complaint_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["complaint_id"], name: "index_workers_on_complaint_id", using: :btree
    t.index ["full_name"], name: "index_workers_on_full_name", using: :btree
  end

  add_foreign_key "items", "workers"
  add_foreign_key "sdos", "complaints"
  add_foreign_key "users", "complaints"
  add_foreign_key "workers", "complaints"
end
