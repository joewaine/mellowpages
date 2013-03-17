# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#

class Author < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_and_belongs_to_many :books
end
