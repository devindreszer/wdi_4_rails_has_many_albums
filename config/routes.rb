Rails.application.routes.draw do

  devise_for :users
  resources :albums, only: [:index, :show] do
    resources :songs
  end

  resources :authors, only: [:index, :show] do
    resources :books, only: [:index, :show]
  end

  root 'albums#index'

end
