json.extract! reservation, :id, :created_at, :updated_at, :seat, :user_id, :flight_id
json.url reservation_url(reservation, format: :json)
