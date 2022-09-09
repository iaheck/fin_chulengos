Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :resources
  # Defines the root path route ("/")
  # root "articles#index"

  resources :roadmaps, only: [:show]

  resources :checkpoints, only: %i[index show new create]
  get 'login/index'
  get 'checkpoints/:id/resource' => 'resources#index', as: :checkpoint_resource

  root 'roadmaps#show', defaults: { id: '1' }
  # root to:"login#index"
  resources :challenge_personals, only: %i[index show new create]
end
