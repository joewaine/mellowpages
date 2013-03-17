class AddPublicationTable < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :publication_title
      t.string :issue_title
      t.string :issue_date
      t.integer :total_copies
      t.integer :copies_available
      t.integer :loan_duration
      t.boolean :in_collection, :default => true
      t.timestamps
  end
  end
end