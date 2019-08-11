Rails.application.routes.draw do
  jsonapi_resources :movies
  jsonapi_resources :directors
  jsonapi_resources :actors
  jsonapi_resources :genres
  jsonapi_resources :movie_actors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
