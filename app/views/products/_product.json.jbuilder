json.extract! product, :id, :product_name, :brand, :picture, :price, :stock, :descrption, :halal_cert, :kkm_cert, :sirim_cert, :created_at, :updated_at
json.url product_url(product, format: :json)
