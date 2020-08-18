Rails.application.routes.draw do
  # root '/login' #come back to this
  get '/users/:id/favorites', to: 'users#favorites', as: 'favorite_quotes'
  resources :favorites
  resources :quotes
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
