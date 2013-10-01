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

ActiveRecord::Schema.define(:version => 20130930050917) do

  create_table "jobs", :force => true do |t|
    t.text     "name"
    t.integer  "number"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "lists", :force => true do |t|
    t.integer  "job_id"
    t.string   "list_name"
    t.string   "list_type"
    t.string   "list_code"
    t.string   "status"
    t.string   "po"
    t.text     "segment"
    t.text     "segment2"
    t.datetime "date_received"
    t.integer  "expected_quantity"
    t.integer  "declared_quantity"
    t.integer  "received_quantity"
    t.integer  "converted_quantity"
    t.boolean  "approved"
    t.integer  "approved_by"
    t.datetime "approved_at"
    t.boolean  "canceled"
    t.integer  "canceled_by"
    t.datetime "canceled_at"
    t.string   "conversion_rejects"
    t.text     "comments"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
