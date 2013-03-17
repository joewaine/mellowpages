# == Schema Information
#
# Table name: publications
#
#  id                :integer          not null, primary key
#  publication_title :string(255)
#  issue_title       :string(255)
#  issue_date        :string(255)
#  total_copies      :integer
#  copies_available  :integer
#  loan_duration     :integer
#  in_collection     :boolean          default(TRUE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Publication < ActiveRecord::Base
  attr_accessible :publication_title, :issue_title, :issue_date, :total_copies, :copies_available, :in_collection, :loan_duration
  has_many :publication_checkouts
  has_and_belongs_to_many :genres
end
