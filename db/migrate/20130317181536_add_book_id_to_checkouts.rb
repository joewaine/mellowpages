class AddBookIdToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :book_id, :integer
  end
end
