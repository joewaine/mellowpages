class AddBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :image
      t.string :isbn
      t.boolean :in_collection, :default => true
      t.integer :total_copies
      t.integer :copies_available
      t.integer :loan_duration
      t.boolean :is_checked_out, :default => false
      t.timestamps
  end
  end
end