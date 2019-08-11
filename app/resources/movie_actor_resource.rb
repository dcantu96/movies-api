class MovieActorResource < JSONAPI::Resource
  belongs_to :actor
  belongs_to :movie
end
