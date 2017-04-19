class Meeting < ApplicationRecord
  PAYMENT_STATUS = ["en attente de paiement", "payé"]
  STATUS = ["à programmer", "programmé", "réalisé"]

  belongs_to :user
  belongs_to :hrservice

  validates :user, presence: true
  validates :hrservice, presence: true
  validates :payment_status, inclusion: { in: ["en attente de paiement", "payé"], default: "en attente de paiement" }
  validates :status, inclusion: { in: ["à programmer", "programmé", "réalisé"], default: "à programmer" }


end
