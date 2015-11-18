Rails.application.routes.draw do
  devise_for :users
  resources :locations
  resources :pilots

  root 'locations#index'
end
