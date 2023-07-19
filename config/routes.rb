Rails.application.routes.draw do
  get 'posts/show'
  get 'posts/index'
  get 'posts/new'
  get 'posts/edit'
  resources :posts
end
