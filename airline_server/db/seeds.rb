# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Admin', :email => 'admin@burnair.com', :password => 'chicken'
u2 = User.create :name => 'Abdul', :email => 'abdominator@ga.com', :password => 'chicken'
u3 = User.create :name => 'Mac', :email => 'macandcheez@ga.com', :password => 'chicken'
u4 = User.create :name => 'Bonny', :email => 'chocobonbons@ga.com', :password => 'chicken'

Plane.destroy_all
a1 = Plane.create :name => 'Boeing 747', :rows => 20, :columns => 6
a2 = Plane.create :name => 'Learjet', :rows => 4, :columns => 2
a3 = Plane.create :name => 'Airbus A380', :rows => 22, :columns => 5
a4 = Plane.create :name => 'Millennium Falcon', :rows => 2, :columns => 1

Flight.destroy_all
f1 = Flight.create :flight_no => 'BU666', :origin => 'SYD', :destination => 'PER', :date => '01/09/2018 17:00'
f2 = Flight.create :flight_no => 'BU410', :origin => 'NYC', :destination => 'AUC', :date => '02/07/2018 08:00'
f3 = Flight.create :flight_no => 'LJ100', :origin => 'SYD', :destination => 'BAL', :date => '01/08/2018 14:00'
f4 = Flight.create :flight_no => 'BU111', :origin => 'PER', :destination => 'MEL', :date => '01/11/2018 15:00'
f5 = Flight.create :flight_no => 'SW777', :origin => 'SYD', :destination => 'LDN', :date => '15/05/2018 20:00'

# Associates Airplanes with Flights
a1.flights << f1
a2.flights << f2 << f5
a3.flights << f3
a4.flights << f4

Reservation.destroy_all
r1 = Reservation.create :user_id => u4.id, :flight_id => f1.id, :seat => 'A1'
r2 = Reservation.create :user_id => u2.id, :flight_id => f2.id, :seat => 'B2'
r3 = Reservation.create :user_id => u4.id, :flight_id => f2.id, :seat => 'C1'
