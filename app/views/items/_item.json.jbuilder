json.extract! item, :id, :name, :cost_in, :price_out, :color, :d1, :d2, :d3, :d4, :comment, :created_at, :updated_at
json.url item_url(item, format: :json)
