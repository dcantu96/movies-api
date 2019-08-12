class MovieResource < JSONAPI::Resource
  attributes :name, :duration
  has_many :actors
  has_one :genre
  has_one :director
end
