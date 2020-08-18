Rails.application.routes.draw do
  # root '/login' #come back to this
  get '/users/:id/favorites', to: 'users#favorites', as: 'favorite_quotes'
  post '/users/:id/favorites/:quote_id', to: 'users#remove_favorite'
  resources :favorites
  resources :quotes
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
