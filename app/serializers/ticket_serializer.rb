class TicketSerializer < ActiveModel::Serializer
  attributes :id, :closed_at
  has_one :status
  has_one :customer
end
