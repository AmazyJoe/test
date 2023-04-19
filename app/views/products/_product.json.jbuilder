json.extract! product, :id, :name, :price, :rating, :delivery_cost, :mode, :ecommerce_website_id, :created_at, :updated_at
json.url product_url(product, format: :json)
