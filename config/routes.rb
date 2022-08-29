Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :resource
  # root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :paths
  resources :checkpoints
  root "paths#show", :defaults => { :id => '1' }
end
