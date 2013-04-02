# == Schema Information
#
# Table name: books
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  url              :string(255)
#  remote_url_url   :string(255)
#  isbn             :string(255)
#  pages            :integer
#  author           :string(255)
#  publisher        :string(255)
#  on_hold          :boolean          default(FALSE)
#  is_checked_out   :boolean          default(FALSE)
#  in_collection    :boolean          default(TRUE)
#  total_copies     :integer          default(1)
#  copies_available :integer          default(1)
#  loan_duration    :integer          default(1)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :title, :url, :remote_url_url, :isbn, :pages, :author, :publisher, :in_collection, :total_copies, :copies_available, :loan_duration, :genre_ids, :is_checked_out, :on_hold
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :authors
  has_many :comments, :dependent => :destroy
  # belongs_to :bookable, :polymorphic => true
  has_many :holds
  # has_many :users, :through => :hold
  has_many :checkouts
  # has_many :users, :through => :checkout
  mount_uploader :url, BookImageUploader

  def user
    self.checkouts.where(:is_returned => false).first.user
  end


  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Book.create! row.to_hash
    end
  end
end





  # has_many :checkouts
  # has_many :users, :through => :checkouts
