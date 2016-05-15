Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :tags
  resources :posts
  resources :categories
  resource :session, only: [:new, :create, :destroy]
 
  root 'posts#index'
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'
  get 'search', to: 'tags#search'
end
