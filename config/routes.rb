Rails.application.routes.draw do
  # root '/login' #come back to this
  resources :favorites
  resources :quotes
  resources :users
  get '/users/[:id]/favorites', to: 'users#favorites'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
