class DishesController < ApplicationController
  def index
    @categories = Category.all
  end
end
