json.extract! line_item, :id, :image, :name, :description, :price, :store_id_id, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
