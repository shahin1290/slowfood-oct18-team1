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

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.update(dishes_params)
    redirect_to dishes_path
  end

  private
    def dishes_params
        params.require(:dish).permit(:name, :description, :price)
    end
end
