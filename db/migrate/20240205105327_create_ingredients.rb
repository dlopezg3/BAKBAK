class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :cost_per_gram
      t.string :supplier
      t.date :last_price_update

      t.timestamps
    end
  end
end
