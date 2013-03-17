class AddGoodreadsData < ActiveRecord::Migration
  def change
    create_table :goodreads do |t|
      t.string :book_id
      t.string :title
      t.string :author
      t.string :author_l_f
      t.text :additional_authors
      t.integer :isbn
      t.integer :isbn_13
      t.float :my_rating
      t.float :average_rating
      t.string :publisher
      t.string :binding
      t.integer :number_of_pages
      t.integer :year_published
      t.integer :original_publication_year
      t.string :date_read
      t.string :date_added
      t.string :bookshelves
      t.string :bookshelves_with_positions
      t.text :exclusive_shelf
      t.text :my_review
      t.text :spoiler
      t.text :private_notes
      t.text :read_count
      t.text :recommended_for
      t.text :recommended_by
      t.integer :owned_copies
      t.string :original_purchase_date
      t.text :original_purchase_location
      t.string :condition
      t.text :condition_description
      t.string :bcid
      t.boolean :in_collection, :default => true
      t.integer :total_copies
      t.integer :copies_available
      t.integer :loan_duration
      t.timestamps
  end
  end
end