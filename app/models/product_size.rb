class ProductSize < ApplicationRecord
  belongs_to :product
  has_one :recipe, dependent: :destroy
end
