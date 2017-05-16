class Hrservice < ApplicationRecord

  has_many :meetings, dependent: :destroy
  has_many :users, through: :meetings

  monetize :price_cents
end
