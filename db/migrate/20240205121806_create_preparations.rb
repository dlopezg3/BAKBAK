class CreatePreparations < ActiveRecord::Migration[7.1]
  def change
    create_table :preparations do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :satus

      t.timestamps
    end
  end
end
