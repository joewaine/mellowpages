class AddPublicationCheckoutTable < ActiveRecord::Migration
  def change
    create_table :publication_checkouts do |t|
      t.integer :checkout_id
      t.integer :publication_id
      t.string :due_date
      t.boolean :returned, :default => true
      t.timestamps
  end
  end
end