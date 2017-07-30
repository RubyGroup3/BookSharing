Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :books
    resources :book_deals
    resources :categories
    resources :comments
    resources :publishers
    resources :ratings

    root to: "users#index"
  end

  resources :ratings
  resources :comments
  resources :book_deals
  devise_for :users
  resources :books
  resources :users, only: [:show]

  get 'home/index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
