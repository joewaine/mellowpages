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
#  is_checked_out   :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :title, :image, :isbn, :in_collection, :total_copies, :copies_available, :loan_duration, :genre_ids, :is_checked_out
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :authors
  has_many :checkouts
  has_many :users, :through => :checkouts

def user
self.checkouts.where(:is_returned => false).first.user
end


def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Book.create! row.to_hash
end
end
end