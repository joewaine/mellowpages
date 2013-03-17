class AddCheckoutTable < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :start_date
      t.integer :user_id
    end
  end
end