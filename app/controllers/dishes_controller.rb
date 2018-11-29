class DishesController < ApplicationController
  def index
    @categories = Category.all
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
    if @dish.update(dishes_params)
      redirect_to dishes_path
    else 
      render 'edit'
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to dishes_path
  end

  private
    def dishes_params
        params.require(:dish).permit(:name, :description, :price)
    end
end
