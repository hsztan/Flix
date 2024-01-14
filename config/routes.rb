Rails.application.routes.draw do
  root 'movies#index'
  get 'movies/index'
end
