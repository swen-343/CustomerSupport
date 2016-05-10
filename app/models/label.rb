class Label < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :customer

  validates :ticket_id, presence: true
  validates :customer_id, presence: true
  validates :address, presence: true

end
