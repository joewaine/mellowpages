# == Schema Information
#
# Table name: holds
#
#  id        :integer          not null, primary key
#  book_id   :integer
#  user_id   :integer
#  fulfilled :boolean          default(FALSE)
#

class Hold < ActiveRecord::Base
  attr_accessible :start_date, :user_id, :book_id, :is_returned
  # has_many :books, :as => :bookable
  # has_many :users, :as => :userable
  belongs_to :user
  belongs_to :book
end
