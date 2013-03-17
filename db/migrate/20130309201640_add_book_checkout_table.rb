class AddBookCheckoutTable < ActiveRecord::Migration
  def change
    create_table :book_checkouts do |t|
      t.integer :checkout_id
      t.integer :book_id
      t.string :due_date
      t.boolean :returned, :default => true
      t.timestamps
  end
  end
end