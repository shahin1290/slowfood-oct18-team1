class DishesController < ApplicationController
  def index
    @categories = Category.all
  end
  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
    @categories = Category.all
  end

  def create
    @dish = Dish.new(dishes_params)
    @dish.update(category: find_category)
    if @dish.save
      redirect_to dishes_path
    else
      @categories = Category.all
      render 'new'
    end
  end

  def edit
    @dish = Dish.find(params[:id])
    @categories = Category.all
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dishes_params)
      @dish.update(category: find_category)
      redirect_to dishes_path
    else 
      @categories = Category.all
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

    def find_category
      Category.find_by(id: params[:dish][:category_id])
    end
end
