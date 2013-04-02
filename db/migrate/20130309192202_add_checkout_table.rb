class AddCheckoutTable < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :start_date
      t.integer :user_id
      t.integer :book_id
      t.boolean :is_returned, :default => false

    end
  end
end