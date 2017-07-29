Rails.application.routes.draw do
  resources :ratings
  resources :comments
  resources :book_deals
  devise_for :users
  resources :books
  resources :users, only: [:show]
  get '/admin', to: 'admin#index'
  scope '/admin' do
    resources :publishers
    resources :categories
  end
  get 'home/index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
