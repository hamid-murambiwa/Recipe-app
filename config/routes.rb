Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :recipes, only: %i[index show new create destroy] do
    resources :recipe_foods, only: %i[new create destroy update edit]
    resources :shopping_lists, only: %i[index]
  end

  resources :users, only: [:create] do
    resources :foods, only: %i[index new create destroy]
  end

  get 'public', to: 'recipes#public', as: 'public'
  put 'recipes/:id/update', to: 'recipes#update', as: 'update'
  put '/recipes/:id/recipe_foods/new', to: 'recipe_foods#new', as: 'new'

  root 'foods#index'
end
