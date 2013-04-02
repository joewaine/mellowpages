class AddBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :url
      t.string :remote_url_url
      t.string :isbn
      t.integer :pages
      t.string :author
      t.string :publisher
      # t.references :bookable, :polymorphic => true
      t.boolean :on_hold, :default => false
      t.boolean :is_checked_out, :default => false
      t.boolean :in_collection, :default => true
      t.integer :total_copies, :default => 1
      t.integer :copies_available, :default => 1
      t.integer :loan_duration, :default => 1
      t.timestamps
  end
  end
end