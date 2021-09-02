Rails.application.routes.draw do
  devise_for :users
  resources :requests
  resources :users

  devise_scope :user do
    authenticated :user do
      root to: 'requests#index', as: :user_root
    end
    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
