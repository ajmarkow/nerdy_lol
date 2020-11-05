Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'discussions#index'
    resources :discussions do
      resources :posts do 
        resources :likes
      end
    end
devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth'}
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new'
    get 'users/sign_out', to: 'users/sessions#destroy'
    get 'users/:id', to: 'users#show'
  end
end
