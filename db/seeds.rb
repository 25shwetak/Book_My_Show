# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create([
    {movie_name: 'Star Wars', movie_type: 'Action', duration: "2 hours"},
    {movie_name: 'Forbidden Planet', movie_type: 'Drama', duration: "2 hours 30 mins"},
    {movie_name: 'Gone with the wind', movie_type: 'Drama/Romance', duration: "1 hours 55 mins"},
    {movie_name: 'Black Panther', movie_type: 'Action', duration: "1 hours 45 mins"},
    {movie_name: 'Good News', movie_type: 'Comedy', duration: "2 hours 15 mins"},
    {movie_name: 'Uri', movie_type: 'Action', duration: "2 hours 30 mins"},
    {movie_name: 'Anabelle', movie_type: 'Horror', duration: "3 hours 10 mins"}
])

Admin.create([
    {name: 'Shweta Kumari', email: '25shwetakshasha@gmail.com', password_digest: '12345'}
])

Screen.create([
    {screen_number: 1, seat_availability: 100},
    {screen_number: 2, seat_availability: 100},
    {screen_number: 3, seat_availability: 100},
    {screen_number: 4, seat_availability: 100}
])

Show.create([
    {time: '12 PM - 3 PM', date: "25/11/2020", movie_id: 1, screen_id: 1},
    {time: '12 PM - 3 PM', date: "25/11/2020", movie_id: 6, screen_id: 3},
    {time: '4 PM - 7 PM', date: "25/11/2020", movie_id: 2, screen_id: 3},
    {time: '8 PM - 11 PM', date: "25/11/2020", movie_id: 3, screen_id: 2},
    {time: '12 PM - 3 PM', date: "26/11/2020", movie_id: 7, screen_id: 4},
    {time: '4 PM - 7 PM', date: "26/11/2020", movie_id: 5, screen_id: 1} 
])

