class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :brand
      t.string :picture
      t.float :price
      t.integer :stock
      t.text :descrption
      t.string :halal_cert
      t.string :kkm_cert
      t.string :sirim_cert

      t.timestamps
    end
  end
end
