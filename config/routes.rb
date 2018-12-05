Rails.application.routes.draw do
  resources :user_plants
  resources :requests
  resources :plants
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
