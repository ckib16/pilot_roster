Rails.application.routes.draw do
  devise_for :users
  resources :locations
  resources :users, only: [:index, :show]

  root 'locations#index'
end
