class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
        show_ids = Booking.pluck(:show_id)
        @shows = []
        show_ids.each do |show_id|
            @shows.push(Show.where(id: show_id))
        end
    end
end
