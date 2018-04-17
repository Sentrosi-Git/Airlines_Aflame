class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.text :flight_number
      t.text :origin
      t.text :destination
      t.datetime :departure_date
      t.datetime :arrival_date
      
      t.timestamps
    end
  end
end
