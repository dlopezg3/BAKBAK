class RemoveCostAndPriceFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :cost, :decimal
    remove_column :products, :price, :decimal
  end
end
