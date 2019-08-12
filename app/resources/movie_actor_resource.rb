class MovieActorResource < JSONAPI::Resource
  has_one :actor
  has_one :movie
end
