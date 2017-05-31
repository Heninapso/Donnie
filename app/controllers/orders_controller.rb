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
end
