class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dishes_params)
    if @dish.save
      redirect_to dishes_path
    else
      render 'new'
    end
  end

  private
    def dishes_params
        params.require(:dish).permit(:name, :description, :price)
    end
end
