class MovieResource < JSONAPI::Resource
  attributes :name, :duration
  has_many :movie_actors
  has_many :actors, through: :movie_actors
  has_one :genre
  has_one :director

  # filters :name
  filter :name, apply: ->(records, value, _options) {
    s = records.where('lower(name) LIKE ?', "%#{value[0]}%")
    puts s.count
    s
  }
end
