require 'imdb'
class Movie < ActiveRecord::Base
  class << self
    def search (search)
      movies = where("title like '%#{search}%'").limit(1)
      if movies.present?
        movies
      else
        movies = Imdb::Search.new(search).movies.map do |movie|
                  {
                    title: movie.title,
                    poster: movie.poster,
                    year: movie.year,
                    synopsis: movie.plot_synopsis
                  }
                end
      end
    end
  end
end
