class AddReferenceToHrserviceToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :hrservice, foreign_key: true
  end
end
