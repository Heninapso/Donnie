class CouponsController < ApplicationController

  def new
  end

  def check_coupon_code
    # @order = Order.find(params[:order_id])
    @coupon = params[:couponcode]

    if !@coupon.blank?
      @coupon = Coupon.get(code)
      if @coupon.nil?
        flash[:error] = 'Coupon code is not valid or expired.'
        redirect_to new_order_payment_path(@order)
        return
      else
        respond_to do |format|
          format.js
        end

        # @final_amount = @coupon.apply_discount(@order.amount.to_i)
        # @discount_amount = (@order.amount - @final_amount)
      end
      # @order.amount = @final_amount
      # @order.coupon = @coupon
    end

  end

end
