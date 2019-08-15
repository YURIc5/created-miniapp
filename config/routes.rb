Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  # get 'posts' => 'posts#index'
  # get 'posts/new' => 'posts#new'
  # post 'posts' => 'posts#create'
  # delete  'posts/new/:id'  => 'posts#destroy'
end
