class Customer < ActiveRecord::Base
  has_many :tickets

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

end
