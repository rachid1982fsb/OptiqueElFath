Rails.application.routes.draw do
  resources :items
  root to: 'home#about'
  resources :orders
  resources :customers
  get 'home/about'
  get 'home/admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
