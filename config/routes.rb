Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :contacts, only: [:new, :create]

  resources :hrservices, only: [:index] do
    resources :meetings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages, only: [:new, :create]

  resources :orders, only: [:show, :create] do
    member do
      post :check_coupon_code
    end
    resources :payment, only: [:new, :create]
  end

  get '/robots.:format' => 'pages#robots'
  # post 'check_coupon_code' => 'coupons#check_coupon_code'

end


