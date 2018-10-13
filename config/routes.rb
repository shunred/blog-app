Rails.application.routes.draw do
  root 'genres#index'

  resources :products, only: [:new, :create]
  resources :genres, only: [:index] do
    resources :products, only: [:index]
  end
end
