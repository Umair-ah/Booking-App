# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
BookingType.destroy_all

user = User.create!(
    booking_link: "umair",
    name: "Umair Ahmed",
    email: "test@user.com",
    password: "user123",
    password_confirmation: "user123"
)

booking_type1 = BookingType.create!(
    color: "#38bdf8",
    description: "testoing 123 for 15 mins",
    duration: 15,
    location: "HR Sports Arena",
    name: "15 min",
    payment_required: false,
    price: nil,
    user: user
)

booking_type2 = BookingType.create!(
    color: "#fbbf24",
    description: "testoing 123 for 30 mins",
    duration: 30,
    location: "Orbit Turf",
    name: "30 min",
    payment_required: false,
    price: nil,
    user: user
)

booking_type3 = BookingType.create!(
    color: "#34d399",
    description: "testoing 123 for 60 mins",
    duration: 60,
    location: "Stadium",
    name: "60 min",
    payment_required: true,
    price: 125,
    user: user
)
puts "all seeds planted!"