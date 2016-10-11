Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'index#index'
  get 'home', to: 'home#index'
  get 'profile', to: 'profile#index'
  get 'profile/:id', to: 'profile#index'
  get 'users/logout', to: 'users#logout'
  get 'users/getjson', to: 'users#getjson'
  post 'users/create', to: 'users#create'
  post 'users/login', to: 'users#login'
  post 'tweets/create', to: 'tweets#create'
  post 'comments/create', to: 'comments#create'
  post 'follows/create', to: 'follows#create'
  post 'follows/delete', to: 'follows#delete'
end
