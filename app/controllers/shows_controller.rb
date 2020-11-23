class ShowsController < ApplicationController
    def index
        @shows = Show.all
        @count = -1
        @counts = -1
        movie_ids = Show.pluck(:movie_id)
        @movies = []
        movie_ids.each do |e|
            @movies.push(Movie.where(id: e).pluck(:movie_name, :movie_type))
        end
    end

    def book
        p "params"
        p params
        if params
            redirect_to '/seats'
        else
            p "error in booking"
            redirect_to '/shows'
        end
    end
    # helper_method :book
end
