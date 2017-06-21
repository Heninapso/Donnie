class Hrservice < ApplicationRecord

  has_many :meetings, dependent: :destroy
  has_many :users, through: :meetings
  has_many :orders

  monetize :price_cents
end
