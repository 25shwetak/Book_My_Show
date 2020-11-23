class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def create
        movie = Movie.create(movie_name: params["movie_name"], movie_type: params["movie_type"], duration: params["duration"])
        if movie.save
          redirect_to '/movies'
        else
          flash[:register_errors] = admin.errors.full_messages
          render "movies/create"
        end  
    end

    def destroy
        p params
        movie_id = params["id"]
        Movie.delete(movie_id)
        redirect_to '/movies'
    end

    def update
        p "Updated !!!"
    end

    def show
    end
end
