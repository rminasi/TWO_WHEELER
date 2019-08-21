Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes do
    resources :bookings
  end
  get 'search', to: 'pages#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
