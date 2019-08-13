class DirectorResource < JSONAPI::Resource
  attributes :name
  has_many :movies
end
