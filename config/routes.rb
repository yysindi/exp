Rails.application.routes.draw do

  devise_for :users

  get 'users', to: 'users#index', as: 'all_users'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'notifications', to: 'notifications#index'
  patch 'users/:id', to: 'users#update'

  post 'toggle_favorite/:id', to: 'jobs#toggle_favorite', as: 'toggle_favorite'

  root to: 'pages#home'
   # post 'apply', to: 'pages#apply'
  resources :jobs do
    resources :applications, only: [:create, :destroy]
  end

  post '/search', to: 'jobs#search'
  # post '/search', to: 'users#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
