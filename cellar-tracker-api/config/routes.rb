Rails.application.routes.draw do
  resources :ingredients
  resources :brewers
  resources :breweries
  resources :cellars
  resources :beers
  resources :users
  post '/login', to: 'sessions#create'
  get '/current_user', to: 'sessions#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
