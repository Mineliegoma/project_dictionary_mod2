Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  # devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'application#home' 
  get '/users/:id/favorites', to: 'users#favorites', as: 'favorite_quotes'
  post '/users/:id/favorites/:quote_id', to: 'users#remove_favorite'
  resources :favorites
  resources :quotes
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
