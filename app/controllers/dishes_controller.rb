class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.create(dishes_params)
    redirect_to dishes_path
  end

  private
    def dishes_params
        params.require(:dish).permit(:name, :description, :price)
    end
end
