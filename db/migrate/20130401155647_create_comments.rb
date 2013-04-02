class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :body
      t.references :book

      t.timestamps
    end
    add_index :comments, :book_id
  end
end
