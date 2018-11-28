class AddRestaurantOwnerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :restaurantowner, :boolean, default: false
  end
end
