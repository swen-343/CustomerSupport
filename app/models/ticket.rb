class Ticket < ActiveRecord::Base
  belongs_to :status
  belongs_to :customer

  accepts_nested_attributes_for :customer
end
