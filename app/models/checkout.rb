# == Schema Information
#
# Table name: checkouts
#
#  id          :integer          not null, primary key
#  start_date  :string(255)
#  user_id     :integer
#  book_id     :integer
#  is_returned :boolean          default(FALSE)
#  is_held     :boolean          default(FALSE)
#

class Checkout < ActiveRecord::Base
  attr_accessible :start_date, :user_id, :book_id, :is_returned, :is_held
  # has_many :books, :as => :bookable
  # has_many :users, :as => :userable
  belongs_to :user
  belongs_to :book
end
