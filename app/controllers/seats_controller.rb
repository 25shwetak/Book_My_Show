class SeatsController < ApplicationController
    def index
        @show_id =  params["show_id"].to_i
        @show = Show.find_by(id: @show_id)
        @movie = Movie.find_by(id: @show.movie_id)
        @rows = 0
        @number = 0
        @seats = Seat.all
    end
end
