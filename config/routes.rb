Rails.application.routes.draw do
  devise_for :users

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'

  patch 'restaurants/:id', to: 'restaurants#update'
  root to: 'pages#home'

  resources :jobs, only: [:index , :show] do
    resources :applications, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
