class OrderSneakersController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_sneakers.new(order_sneaker_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_sneaker = @order.order_sneakers.find(params[:id])
    @order_sneaker.update_attributes(order_sneaker_params)
    @orders_sneakers = @order.orders_sneakers
  end

  def destroy
    @order = current_order
    @order_sneaker = @order.order_sneakers.find(params[:id])
    @order_sneaker.destroy
    @order_sneakers = @order.order_sneakers
  end
  private
  def order_sneaker_params
    params.require(:order_item).permit(:quantity, :sneaker_)
  end
end
