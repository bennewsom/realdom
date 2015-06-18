Rails.application.routes.draw do
  resources :tenants, only: [:index, :show, :new, :create]
end
