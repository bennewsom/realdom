Rails.application.routes.draw do
  devise_for :users
  resources :tenants, only: [:index, :show, :new, :create, :edit, :update]
  resources :landlords, only: [:index, :show, :new, :create, :edit, :update]

 root to: "home#index"
end
