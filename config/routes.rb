Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'spaces#index'

  resources :spaces do
    resources :posts, only: [ :new, :create ]
  end
  
  resources :posts, only: [ :show, :edit, :update, :destroy ]    

  resources :likes, only: [ :create, :destroy]
  resources :saves, only: [ :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
