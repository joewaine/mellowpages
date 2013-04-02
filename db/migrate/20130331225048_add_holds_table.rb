class AddHoldsTable < ActiveRecord::Migration
  def change
    create_table :holds do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :fulfilled, :default => false
    end
  end
end