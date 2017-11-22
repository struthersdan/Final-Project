class CartsController < ApplicationController
  def show
    @order_sneakers = current_order.order_sneakers
  end
end
