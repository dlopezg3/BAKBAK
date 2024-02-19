class Product < ApplicationRecord
  has_many :product_sizes, dependent: :destroy
  validates :name, presence: true
  validates :product_type, presence: true
  accepts_nested_attributes_for :product_sizes
  CATEGORIES = ["Biscuits", "Tortas", "Moldes", "Galletas", "Helados", "Ediciones Especiales"]

end
