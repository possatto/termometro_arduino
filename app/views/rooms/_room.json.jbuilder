json.extract! room, :id, :name, :temperature_max, :temperature_minimum, :created_at, :updated_at
json.url room_url(room, format: :json)