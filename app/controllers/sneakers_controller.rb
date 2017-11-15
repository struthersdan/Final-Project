class SneakersController < ApplicationController
  def index
  @sneakers = Sneaker.all

    end

  def show
    @sneaker = Sneaker.find(params[:id])
    # @sneaker = params[:number]
  end
end
