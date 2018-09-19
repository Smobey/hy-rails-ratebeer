Rails.application.routes.draw do
  resources :users
  resources :beers
  resources :breweries
  resources :ratings, only: [:index, :new, :create, :destroy]
  resource :session, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new'

  root 'breweries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
