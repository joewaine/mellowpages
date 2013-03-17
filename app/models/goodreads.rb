# == Schema Information
#
# Table name: goodreads
#
#  id                         :integer          not null, primary key
#  book_id                    :string(255)
#  title                      :string(255)
#  author                     :string(255)
#  author_l_f                 :string(255)
#  additional_authors         :text
#  isbn                       :integer
#  isbn_13                    :integer
#  my_rating                  :float
#  average_rating             :float
#  publisher                  :string(255)
#  binding                    :string(255)
#  number_of_pages            :integer
#  year_published             :integer
#  original_publication_year  :integer
#  date_read                  :string(255)
#  date_added                 :string(255)
#  bookshelves                :string(255)
#  bookshelves_with_positions :string(255)
#  exclusive_shelf            :text
#  my_review                  :text
#  spoiler                    :text
#  private_notes              :text
#  read_count                 :text
#  recommended_for            :text
#  recommended_by             :text
#  owned_copies               :integer
#  original_purchase_date     :string(255)
#  original_purchase_location :text
#  condition                  :string(255)
#  condition_description      :text
#  bcid                       :string(255)
#  in_collection              :boolean          default(TRUE)
#  total_copies               :integer
#  copies_available           :integer
#  loan_duration              :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

class Goodreads < ActiveRecord::Base
  attr_accessible :book_id, :title, :author, :author_l_f, :additional_authors, :isbn, :isbn13, :publisher, :binding, :number_of_pages, :year_published, :in_collection, :total_copies, :copies_available, :loan_duration
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :authors
  has_many :book_checkouts
end
