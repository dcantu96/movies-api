class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre
  has_many :movie_actors
  has_many :actors, through: :movie_actors
end
