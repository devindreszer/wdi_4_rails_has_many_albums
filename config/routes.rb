Rails.application.routes.draw do

  resources :albums, only: [:index, :show] do
    resources :songs
  end

  resources :authors


  root 'albums#index'

end
