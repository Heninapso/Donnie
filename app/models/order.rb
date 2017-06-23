class Order < ApplicationRecord

  belongs_to :hrservice

  monetize :amount_cents

end
