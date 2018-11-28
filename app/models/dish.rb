class Dish < ApplicationRecord
    belongs_to :category

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :category, presence: true
end
