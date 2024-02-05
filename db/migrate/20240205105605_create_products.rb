class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :size
      t.decimal :price
      t.decimal :cost
      t.string :details

      t.timestamps
    end
  end
end
