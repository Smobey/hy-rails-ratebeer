Rails.application.routes.draw do
  resources :beers
  resources :breweries
  get 'ratings', to: 'ratings#index'
  root 'breweries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
