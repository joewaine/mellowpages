# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  phone           :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  is_active       :boolean          default(TRUE)
#  is_admin        :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :email, :is_active, :is_admin, :password, :password_confirmation
  has_many :checkouts
  has_many :books, :through => :checkouts
  # belongs_to :userable, :polymorphic => true
  has_many :holds
  # has_many :books, :through => :hold


  has_secure_password
end
