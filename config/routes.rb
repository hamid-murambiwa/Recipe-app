Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'recipe/index'
  get 'recipe/show'
  get 'food/index'
  get 'food/show'
  get 'users/index'
  get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
