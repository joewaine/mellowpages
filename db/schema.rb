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

ActiveRecord::Schema.define(:version => 20130317181938) do

  create_table "authors", :force => true do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "authors_books", :id => false, :force => true do |t|
    t.integer "author_id"
    t.integer "book_id"
  end

  create_table "book_checkouts", :force => true do |t|
    t.integer  "checkout_id"
    t.integer  "book_id"
    t.string   "due_date"
    t.boolean  "returned",    :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "image"
    t.string   "isbn"
    t.boolean  "in_collection",    :default => true
    t.integer  "total_copies"
    t.integer  "copies_available"
    t.integer  "loan_duration"
    t.boolean  "is_checked_out",   :default => false
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
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres_publications", :id => false, :force => true do |t|
    t.integer "genre_id"
    t.integer "publication_id"
  end

  create_table "goodreads", :force => true do |t|
    t.string   "book_id"
    t.string   "title"
    t.string   "author"
    t.string   "author_l_f"
    t.text     "additional_authors"
    t.integer  "isbn"
    t.integer  "isbn_13"
    t.float    "my_rating"
    t.float    "average_rating"
    t.string   "publisher"
    t.string   "binding"
    t.integer  "number_of_pages"
    t.integer  "year_published"
    t.integer  "original_publication_year"
    t.string   "date_read"
    t.string   "date_added"
    t.string   "bookshelves"
    t.string   "bookshelves_with_positions"
    t.text     "exclusive_shelf"
    t.text     "my_review"
    t.text     "spoiler"
    t.text     "private_notes"
    t.text     "read_count"
    t.text     "recommended_for"
    t.text     "recommended_by"
    t.integer  "owned_copies"
    t.string   "original_purchase_date"
    t.text     "original_purchase_location"
    t.string   "condition"
    t.text     "condition_description"
    t.string   "bcid"
    t.boolean  "in_collection",              :default => true
    t.integer  "total_copies"
    t.integer  "copies_available"
    t.integer  "loan_duration"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "publication_checkouts", :force => true do |t|
    t.integer  "checkout_id"
    t.integer  "publication_id"
    t.string   "due_date"
    t.boolean  "returned",       :default => true
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "publications", :force => true do |t|
    t.string   "publication_title"
    t.string   "issue_title"
    t.string   "issue_date"
    t.integer  "total_copies"
    t.integer  "copies_available"
    t.integer  "loan_duration"
    t.boolean  "in_collection",     :default => true
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
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
