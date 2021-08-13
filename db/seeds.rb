require 'json'
require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated'
data = JSON.parse(URI.open(url).read)

image_base_url = 'https://image.tmdb.org/t/p/w400'
data['results'].each do |movie|
  puts movie
  Movie.create(title: movie['original_title'], overview: movie['overview'], poster_url: "#{image_base_url}#{movie['poster_path']}", rating: movie['vote_average'])
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

