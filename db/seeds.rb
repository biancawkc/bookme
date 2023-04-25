# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

BookingType.destroy_all
User.destroy_all

user = User.create!(
    booking_link: "jmisth",
    email: "john.smith@gmail.com",
    name: "John Smith",
    password: "password",
    password_confirmation: "password"
)

booking_type1 = BookingType.create!(
    color: "#28bdf8",
    description: "15 min Test 123",
    duration: 15,
    location: "zoom",
    name: "15min",
    payment_required: false,
    price: nil,
    user: user
)

booking_type2 = BookingType.create!(
    color: "#fbbf24",
    description: "30 min Test 123",
    duration: 30,
    location: "zoom",
    name: "30min",
    payment_required: false,
    price: nil,
    user: user
)

booking_type3 = BookingType.create!(
    color: "#34d399",
    description: "50 min Test 123",
    duration: 60,
    location: "zoom",
    name: "60min",
    payment_required: true,
    price: 125,
    user: user
)

