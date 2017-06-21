class ChangeColumnInOrders < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :hrservice, :hrservice_title
  end
end
