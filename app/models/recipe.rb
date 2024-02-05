class Recipe < ApplicationRecord
  belongs_to :product_size
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :preparations
end
