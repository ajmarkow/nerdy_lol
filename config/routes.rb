Rails.application.routes.draw do
  root to: 'discussions#index'
  devise_for :users
  resources :discussions do
    resources :posts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
