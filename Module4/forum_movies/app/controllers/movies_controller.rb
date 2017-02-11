class MoviesController < ApplicationController
  def search
  end
  def index
    @movies = Movie.search(params[:search])
    if @movies.count == 1
      redirect_to "/movies/#{@movies.id}/discussion"
    else
        @movies
    end
  end
  def start_a_discussion
    movie = Movie.create(entry_params)
    redirect_to "/movies/#{movie.id}/discussion"
  end
  private
    def entry_params
      params.require(:movie).permit(:title, :poster, :year, :synopsis)
    end
end
