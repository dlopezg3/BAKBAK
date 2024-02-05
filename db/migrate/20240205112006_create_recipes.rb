class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.references :product_size, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
