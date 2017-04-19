class AddDefaultValuestoMeetings < ActiveRecord::Migration[5.0]
  def change
    change_column :meetings, :payment_status, :string, default: "en attente de paiement"
    change_column :meetings, :status, :string, default: "à programmer"
  end
end
