Rails.application.routes.draw do
  

  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update, :create]
  resources :groups, only: [:index, :new, :create, :edit, :update]
end
