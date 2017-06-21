class AddOptionFieldsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :option_description, :text
    add_column :orders, :option_price, :integer
  end
end
