
class OrdersController < ApplicationController
  ## TEST ONLY - REMOVE WHEN WORKING
  skip_before_action :authenticate_user!, only: [ :create ]
  before_action :set_order, only: [:check_coupon_code, :options]

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end


  def create
    @hrservice = Hrservice.find(params[:hrservice_id])
    order = Order.create!(hrservice: @hrservice, hrservice_title: @hrservice.title, amount: @hrservice.price, state: 'pending', option_description: @hrservice.options)
    redirect_to new_order_payment_path(order)
  end

  def check_coupon_code
    @coupon = params[:couponCode]
    if !@coupon.blank?
      @coupon_discount = Coupon.get(@coupon)
      if @coupon.nil?
        flash[:alert] = "Hum, on dirait que votre code promo n'est pas valide...."
        redirect_to new_order_payment_path(@order)
        return
      else
        if @order.couponCode?
          flash[:alert] = "Déslolé, ce code promo ne peut être utilisé qu'une seule fois."
          redirect_to new_order_payment_path(@order)
        else
          discount = @order.amount * (@coupon_discount.discount_percent * 0.01)
          @final_price = @order.amount - discount
          @order.update(amount: @final_price, couponCode: @coupon)
          redirect_to new_order_payment_path(@order)
        end
      end
    end
  end

  def options
    option = params[:option_selected]
    # access price in @order.option_description array which is N+1 from option description, then *100 to match Amount_cents
    if @order.option_price?
      flash[:alert] = "Vous avez déjà choisi une option sur ce produit !"
      redirect_to new_order_payment_path(@order)
    else
      option_price = @order.option_description[(@order.option_description.index(option) + 1)].to_i * 100
      price_with_option = (@order.amount_cents + option_price) / 100
      @order.update(amount: price_with_option, option_price: option_price, option_description: [option])
      redirect_to new_order_payment_path(@order)
    end

    # @option = params[:option_selected].to_i
    # option_description = @order.option_description[@option.to_i - 1]
    # #option_selected matches the position of the option price in option_description array
    # option_price = @order.option_description[@option].to_i * 100
    # price_with_option = (@order.amount_cents + option_price) / 100
    # @order.update(amount: price_with_option, option_price: option_price, option_description: [option_description])
    # redirect_to new_order_payment_path(@order)

  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

end
