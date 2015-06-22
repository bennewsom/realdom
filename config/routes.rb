Rails.application.routes.draw do
  resources :tenants, only: [:index, :show, :new, :create, :edit, :update]
  resources :landlords, only: [:index, :show, :new, :create]
end
