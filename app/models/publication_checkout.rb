# == Schema Information
#
# Table name: publication_checkouts
#
#  id             :integer          not null, primary key
#  checkout_id    :integer
#  publication_id :integer
#  due_date       :string(255)
#  returned       :boolean          default(TRUE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class PublicationCheckout < ActiveRecord::Base
  attr_accessible :checkout_id, :publication_id, :due_date, :returned
  belongs_to :checkout
  belongs_to :publication
end
