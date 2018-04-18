json.extract! flight, :id, :created_at, :updated_at, :flight_number, :origin, :destination, :departure_date, :arrival_date
json.extract! flight.plane, :name, :rows, :columns
json.url flight_url(flight, format: :json)
