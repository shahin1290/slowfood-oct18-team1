class RemoveCategoriesFromDishes < ActiveRecord::Migration[5.2]
  def change
    remove_column :dishes, :category, :string
  end
end
