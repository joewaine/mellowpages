class AddIsReturnedColumn < ActiveRecord::Migration
  def change
    add_column :checkouts, :is_returned, :boolean, :default => false
  end
end
