Rails.application.routes.draw do
  get 'meetings/index'

  get 'meetings/show'

  get 'meetings/new'

  get 'meetings/create'

  get 'meetings/edit'

  get 'meetings/update'

  get 'meetings/destroy'

  get 'hrservices/index'

  get 'user/new'

  get 'user/create'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
