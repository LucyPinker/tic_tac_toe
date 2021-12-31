Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'game', to: 'pages#game'
  resources :users, only: [:show, :edit, :update]
end
