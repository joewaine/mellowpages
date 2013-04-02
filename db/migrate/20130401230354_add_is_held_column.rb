class AddIsHeldColumn < ActiveRecord::Migration
  def change
    add_column :checkouts, :is_held, :boolean, :default => false
  end
end
