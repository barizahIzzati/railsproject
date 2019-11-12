class CategoriesProduct < ApplicationRecord
  belongs_to :products
  belongs_to :categories
end
