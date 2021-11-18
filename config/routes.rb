Rails.application.routes.draw do
  devise_for :models
  resources :items
  root to: 'home#about'
  resources :orders
  resources :customers
  get 'home/about'
  get 'home/admin'
  #post '/home/month', to:'orders#by_month' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
