Rails.application.routes.draw do
  root 'genres#index'

  resources :genres, only: [:index] do
    resources :products, only: [:index, :new, :create]
  end

end
