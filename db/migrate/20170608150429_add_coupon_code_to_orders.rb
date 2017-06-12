class AddCouponCodeToOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :couponCode
    add_column :orders, :couponCode, :string
  end
end
