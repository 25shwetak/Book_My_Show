class BookingsController < ApplicationController
    def index
        booking_ids = params["booking_ids"]
        @bookings = Booking.all
        show_id = Booking.find_by(id: booking_ids[0].to_i).show_id
        @show = Show.find_by(id: show_id)
        movie_id = @show.movie_id
        @movie = Movie.find_by(id: movie_id)
        seat_ids = []
        booking_ids.each do |booking_id|
            seat_ids.push(Booking.find_by(id: booking_id.to_i).seat_id)
        end
        @seats = []
        @sum = 0
        seat_ids.each do |seat_id|
            @seats.push(Seat.find_by(id: seat_id))
            @sum = @sum + Seat.find_by(id: seat_id).cost
        end

    end

    def create
        new_booking = []
        show_id = params["show_id"].to_i
        seats_array = [1, 2, 3]
        seats_array.each do |seat|
            Booking.create(show_id: show_id, seat_id: seat.to_i)
            new_booking.push(Booking.last.id)
            Seat.update(seat.to_i, booking_id: Booking.last.id)
        end
        redirect_to controller: 'bookings', action: 'index', booking_ids: new_booking
    end
end
