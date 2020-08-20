Rails.application.routes.draw do
  root to: "home#index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  get "find_food", to: "pages#find_food", as: "find_food"
end
