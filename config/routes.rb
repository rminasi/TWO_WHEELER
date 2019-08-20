Rails.application.routes.draw do
  get 'bikes/index'
  get 'bikes/new'
  get 'bikes/create'
  get 'users/signin'
  get 'users/signup'
  get 'bikes/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
