Rails.application.routes.draw do
  get 'users/:id', to: 'users#show'
  devise_for :users
  root to: 'pages#home'

  resources :jobs, only: [:index , :show] do 
    resources :applications, only: [:create]
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
