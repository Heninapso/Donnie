Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :hrservices, only: [:index] do
    resources :meetings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages, only: [:new, :create]

  resources :orders, only: [:show, :create] do
    resources :payment, only: [:new, :create]
  end


end


