Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # resources :users, only: %i[index]
  resources :recipes, only: %i[index show new create destroy]

  resources :users, only: [:create] do
    resources :foods, only: %i[index new create destroy]
    # resources :recipes, only: %i[index show new create destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  put 'recipes/:id/update', to: 'recipes#update', as: 'update'
  get 'public', to: 'recipes#public', as: 'public'
  root 'foods#index'
end
