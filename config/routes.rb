Rails.application.routes.draw do
  root "chats#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update]
end
