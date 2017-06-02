class CouponsController < ApplicationController

  # def get_discount
  #   @order = Order.find(params[:order_id])
  #   @coupon = params[:couponCode]

  #   if !@coupon.blank?
  #     @coupon = Coupon.get(code)
  #     if @coupon.nil?
  #       flash[:error] = 'Coupon code is not valid or expired.'
  #       redirect_to new_order_payment_path(@order)
  #       return
  #     else
  #       # apply_discount(@order.amount)
  #       # flash[:alert] = "Code promo accepté"
  #       # redirect_to new_order_payment_path(@order)
  #      respond_to do |format|
  #         format.json { render json: @coupon, methods: [:apply_discount(@order.amount), only: []] }
  #       end
  #     end
  #   end
  # end


end
