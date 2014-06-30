Rails.application.routes.draw do

  resources :albums, only: [:index, :show]
  resources :authors

  root 'albums#index'

end
