Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :resource
  # root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :paths, only: [:show] do
    resources :checkpoints, only: [:index]
  end

  resources :checkpoints, only: [:show]

  root "paths#show", :defaults => { :id => '1' }
end
