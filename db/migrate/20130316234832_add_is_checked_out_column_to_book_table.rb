class AddIsCheckedOutColumnToBookTable < ActiveRecord::Migration
  def change
    add_column :books, :is_checked_out, :boolean, :default => false
  end
end
