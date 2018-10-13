Rails.application.routes.draw do
  root 'products#index'

  resources :genres, only: [:index] do
    resources :products, only: [:index, :new, :create]
  end
end
