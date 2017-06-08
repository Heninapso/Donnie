class AddCouponCodeToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :couponCode, :string
  end
end
