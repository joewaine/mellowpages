# == Schema Information
#
# Table name: book_checkouts
#
#  id          :integer          not null, primary key
#  checkout_id :integer
#  book_id     :integer
#  due_date    :string(255)
#  returned    :boolean          default(TRUE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BookCheckout < ActiveRecord::Base
  attr_accessible :checkout_id, :book_id, :due_date, :returned
  belongs_to :checkout
  belongs_to :book
end
