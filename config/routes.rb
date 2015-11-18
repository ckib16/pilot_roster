Rails.application.routes.draw do
  devise_for :users

  resources :locations do
    resources :pilots, only: [:create, :new, :update]
  end

  resources :pilots, only: [:index, :edit, :show, :destroy]

  root 'locations#index'
end
