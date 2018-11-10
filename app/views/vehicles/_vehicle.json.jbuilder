json.extract! vehicle, :id, :vin, :color_id, :type_id, :model, :year, :price, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
