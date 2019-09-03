# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client = Client.create(name: "Joy", email: "Joy@joy.com", password: "joy")

service = Service.create(name: "Individual session", category: "private lessons", price: 40, request_method: "Book")

booking = Booking.create(client_id: 1, service_id: 1, day: "Monday", time: 10)