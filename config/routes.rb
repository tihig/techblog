Rails.application.routes.draw do
  resources :tagships
  resources :tags
  resources :posts
  resources :categories
 
  root 'posts#index'
end
