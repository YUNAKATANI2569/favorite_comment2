Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  resources :users, only: [:show,:index,:edit,:update]
  resources :books, only: [:new, :create, :index, :show,:edit,:update] do
  resources :book_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end





end
