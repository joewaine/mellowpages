class DropBooksUsersTable < ActiveRecord::Migration
  def change
    drop_table :books_users
  end
end
