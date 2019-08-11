class MovieResource < JSONAPI::Resource
  attributes :name, :duration
  has_many :actors
  belongs_to :genre
  belongs_to :director
end
