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

ActiveRecord::Schema.define(:version => 20130401230354) do

  create_table "authors", :force => true do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "authors_books", :id => false, :force => true do |t|
    t.integer "author_id"
    t.integer "book_id"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "remote_url_url"
    t.string   "isbn"
    t.integer  "pages"
    t.string   "author"
    t.string   "publisher"
    t.boolean  "on_hold",          :default => false
    t.boolean  "is_checked_out",   :default => false
    t.boolean  "in_collection",    :default => true
    t.integer  "total_copies",     :default => 1
    t.integer  "copies_available", :default => 1
    t.integer  "loan_duration",    :default => 1
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "books_genres", :id => false, :force => true do |t|
    t.integer "book_id"
    t.integer "genre_id"
  end

  create_table "checkouts", :force => true do |t|
    t.string  "start_date"
    t.integer "user_id"
    t.integer "book_id"
    t.boolean "is_returned", :default => false
    t.boolean "is_held",     :default => false
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.integer  "book_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["book_id"], :name => "index_comments_on_book_id"

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "holds", :force => true do |t|
    t.integer "book_id"
    t.integer "user_id"
    t.boolean "fulfilled", :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_active",       :default => true
    t.boolean  "is_admin",        :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
