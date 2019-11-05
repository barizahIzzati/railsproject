class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :register_no
      t.string :address
      t.string :city
      t.string :state
      t.string :postcode
      t.string :phone_no
      t.string :fax
      t.string :email
      t.string :website
      t.integer :user_id

      t.timestamps
    end
  end
end
