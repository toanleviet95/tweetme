Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'index#index'
  get 'home', to: 'home#index'
  post 'users/create', to: 'users#create'
  post 'users/login', to: 'users#login'
  post 'tweets/create', to: 'tweets#create'
  post 'comments/create', to: 'comments#create'
end
