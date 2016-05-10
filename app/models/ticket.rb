class Ticket < ActiveRecord::Base
  belongs_to :status
  belongs_to :customer
  has_many :labels

  validates :customer, presence: true

  accepts_nested_attributes_for :customer
end
