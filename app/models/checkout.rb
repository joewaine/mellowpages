# == Schema Information
#
# Table name: checkouts
#
#  id         :integer          not null, primary key
#  start_date :string(255)
#  user_id    :integer
#  book_id    :integer
#

class Checkout < ActiveRecord::Base
  attr_accessible :start_date, :user_id, :book_id, :is_returned
  has_many :book_checkouts
  has_many :publication_checkouts
  belongs_to :user
  belongs_to :book
end
