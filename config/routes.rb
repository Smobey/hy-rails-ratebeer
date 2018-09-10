Rails.application.routes.draw do
  resources :beers

  resources :breweries

  resources :ratings, only: [:index, :new, :create, :destroy]

  root 'breweries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
