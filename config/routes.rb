Rails.application.routes.draw do
  resources :ratings
  resources :comments
  resources :book_deals
  devise_for :users
  resources :books
  resources :publishers
  resources :categories
  get 'home/index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
