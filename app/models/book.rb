# == Schema Information
#
# Table name: books
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  image            :string(255)
#  isbn             :string(255)
#  in_collection    :boolean          default(TRUE)
#  total_copies     :integer
#  copies_available :integer
#  loan_duration    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  is_checked_out   :boolean
#

class Book < ActiveRecord::Base
  attr_accessible :title, :image, :isbn, :in_collection, :total_copies, :copies_available, :loan_duration, :genre_ids, :is_checked_out
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :authors
  has_many :book_checkouts
  has_many :users
end
