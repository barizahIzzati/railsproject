class CategoriesProduct < ApplicationRecord
  belongs_to :product
  belongs_to :categories
end
