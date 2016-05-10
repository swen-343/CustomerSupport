class LabelSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ticket
  has_one :customer
end
