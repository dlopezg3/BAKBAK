class AddCostAndPriceToProductSizes < ActiveRecord::Migration[7.1]
  def change
    add_column :product_sizes, :cost, :decimal
    add_column :product_sizes, :price, :decimal
  end
end
