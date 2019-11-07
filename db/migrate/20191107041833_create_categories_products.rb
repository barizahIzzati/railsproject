class CreateCategoriesProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_products do |t|
      t.references :product, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
