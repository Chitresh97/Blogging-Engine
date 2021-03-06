Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  post 'comments/create', to: 'comments#create', as: :comments
  delete 'comments/:id', to: 'comments#destroy', as: :destroy_comment
  post 'posts/:id/like', to: 'likes#create', as: :likes
  # delete 'like/:id', to: 'likes#destroy', as: :destroy_like
end
