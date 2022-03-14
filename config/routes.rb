Rails.application.routes.draw do

  get 'recipe/index'
  get 'recipe/show'
  get 'food/index'
  get 'food/show'
  get 'users/index'
  get 'users/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
