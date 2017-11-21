class SneakersController < ApplicationController
  def index
  @sneakers = Sneaker.order("colorway").page(params[:page]).per(5)
  @search = if params[:term]
    Sneaker.where('model LIKE ?', "%#{params[:term]}%")
  else
    Sneaker.all
    end

  def show
    @sneaker = Sneaker.find(params[:id])
    # @sneaker = params[:number]
  end

  # def search_params
  #   #params.require(:sneaker[id]
  # end
end
end
