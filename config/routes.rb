Rails.application.routes.draw do
  devise_for :users
  resources :tenants
  resources :landlords

  resources :properties, only: [:index]

  root to: "home#index"
end
