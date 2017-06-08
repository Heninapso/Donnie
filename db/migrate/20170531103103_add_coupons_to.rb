class AddCouponsTo < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :coupon, index: true
    add_column :orders, :couponCode, :string
    add_foreign_key :orders, :coupons
  end
end
