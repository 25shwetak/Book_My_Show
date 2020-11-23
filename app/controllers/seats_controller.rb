class SeatsController < ApplicationController
    def index
        @rows = 0
        @number = 0
        @seats = Seat.all
    end
end
