class ShowsController < ApplicationController
    def index
        @shows = Show.all
        @count = -1
        @counts = -1
        movie_ids = []
        @movies = []
        @shows.each do |show|
            movie_ids.push(show.movie_id)
        end
        movie_ids.each do |movie_id|
            @movies.push(Movie.where(id: movie_id).pluck(:movie_name, :movie_type))
        end
    end
end
