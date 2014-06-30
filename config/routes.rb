Rails.application.routes.draw do

  resources :albums, only: [:index, :show]
  resources :authors
  resources :songs

  root 'albums#index'

end
