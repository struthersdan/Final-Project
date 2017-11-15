class SneakersController < ApplicationController
  def index
  @sneakers = Sneaker.all

    end

  def show
  end
end
