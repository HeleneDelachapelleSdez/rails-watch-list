if RAILS_ENV == 'development'
  Bookmark.destroy_all
  List.destroy_all
  Movie.destroy_all
end

require 'json'
require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated'
films_serialized = URI.open(url).read
films = JSON.parse(films_serialized)

films['results'].each do |film|
  Movie.create(title: film['title'], overview: film['overview'], poster_url: 'https://image.tmdb.org/t/p/original' + film['poster_path'], rating: film['vote_average'])
end
