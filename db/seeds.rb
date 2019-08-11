# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Genres
20.times do
 Genre.create name: FFaker::Book.genre
end

# Actors
30.times do
  Actor.create name: FFaker::Name.name
end

# Directors
20.times do
  Director.create name: FFaker::Name.name
end

# Movies and actors in a movie
100.times do
  Movie.create name: FFaker::Movie.title, 
               duration: (90 + Random.rand(30)),
               genre: Genre.all.sample,
               director: Director.all.sample
  3.times do
    Movie.last.actors << Actor.all.sample
  end
end