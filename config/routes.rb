Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :burgers do
    resources :bookings, only: [:new, :create]
  end

  namespace :my do
    resources :bookings, only: [:index]
    resources :burgers, only: [:index]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
