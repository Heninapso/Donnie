class OrdersController < ApplicationController
  ## TEST ONLY - REMOVE WHEN WORKING
  skip_before_action :authenticate_user!, only: [ :create ]

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end


  def create
    @hrservice = Hrservice.find(params[:hrservice_id])
    order = Order.create!(hrservice: @hrservice.title, amount: @hrservice.price, state: 'pending')
    redirect_to new_order_payment_path(order)
  end

  def check_coupon_code
    @order = Order.find(params[:id])
    @coupon = params[:couponCode]
    if !@coupon.blank?
      @coupon_discount = Coupon.get(@coupon)
      if @coupon.nil?
        flash[:alert] = 'Coupon code is not valid or expired.'
        redirect_to new_order_payment_path(@order)
        return
      else
        if @order.couponCode?
          flash[:alert] = "Le code promo ne peut être utilisé qu'une seule fois."
          redirect_to new_order_payment_path(@order)
        else
          discount = @order.amount * (@coupon_discount.discount_percent * 0.01)
          @final_price = @order.amount - discount
          @order.update(amount: @final_price, couponCode: @coupon)
        end
        # respond_to do |format|
        #   format.json { render json: @order, methods: [:apply_discount(order.amount)], only: [] }
        # end
      end
    end
  end

end
