class ProductSize < ApplicationRecord
  belongs_to :product
  has_one :recipe, dependent: :destroy
  validates :size, uniqueness: { scope: :product_id, message: "ya existe para este producto" }

  SIZES = ["Personal", "Mediana", "Grande"]
end
