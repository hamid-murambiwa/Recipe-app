Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:create] do
    resources :foods, only: [:index, :new, :create, :destroy]
    resources :recipes, only: [:index, :show]
  end

  # get 'recipe/index'
  # get 'recipe/show'
  # get 'foods/index'
  # get 'foods/create'
  # get 'foods/destroy'
  # get 'users/index'
  # get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'foods#index'
end
