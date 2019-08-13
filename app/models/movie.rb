class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  def self.search(term)
    if term
      find(:all, :conditions => ['name LIKE ?', "%#{term}%"])
    else
      find(:all)
    end
  end
end
