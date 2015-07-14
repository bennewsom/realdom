Rails.application.routes.draw do
  devise_for :users
  resources :tenants
  resources :landlords

 root to: "home#index"
end
