require 'imdb'
i = Imdb::Search.new("Star Trek")

puts i.movies.size
