Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :reservations
  resources :planes
  resources :users
  resources :flights
  get 'flights/list/:x/:y/' => 'flights#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
