Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :cities, only: %i[index show] do
    resources :invaders, only: %i[new create]
  end

  resources :invaders, only: %i[show index edit update destroy] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: %i[show index edit update destroy] do
    resources :reports, only: %i[new create edit update destroy]
  end

  devise_scope :user do
    get '/users/:id/edit', to: 'users/sessions#edit', as: 'edit_user'
    patch '/users/:id/edit', to: 'users/sessions#update', as: 'update_user'
    get '/users/:id', to: 'users/sessions#show', as: 'profile'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
