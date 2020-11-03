Rails.application.routes.draw do
  resources :discussions do
    resources :posts
  end
  root to: 'discussions#index'
    devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth'}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html