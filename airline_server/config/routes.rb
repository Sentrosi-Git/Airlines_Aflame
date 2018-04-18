Rails.application.routes.draw do
  resources :reservations
  resources :planes
  resources :users
  get 'flights/:x/:y/' => 'flights#list'
  resources :flights
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
