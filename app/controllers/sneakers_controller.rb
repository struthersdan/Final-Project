class SneakersController < ApplicationController
  def index
  @sneakers = Sneaker.order("colorway").page(params[:page]).per(5)

    end

  def show
    @sneaker = Sneaker.find(params[:id])
    # @sneaker = params[:number]
  end

end
