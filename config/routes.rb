Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :resources
  # Defines the root path route ("/")
  # root "articles#index"

  resources :roadmaps, only: [:show]

  resources :checkpoints, only: %i[index show new create]
  get 'login/index', as: :login_index
  get 'checkpoints/:id/resource' => 'resources#index', as: :checkpoint_resource
  get 'challenges/:id' => 'challenge_personals#show', as: :challenge_personal
  get 'checkpoints/:id/challenges' => 'challenge_personals#index', as: :checkpoint_challenge_personal
  post 'checkpoints/:id/challenges' => 'challenge_personals#create', as: :checkpoint_challenge_personals
  get 'checkpoints/:id/challenges/new' => 'challenge_personals#new', as: :challenge_personal_new

  root 'roadmaps#show', defaults: { id: '1' }
  post 'challenges/:id/enroll' => 'challenge_personals#enroll_challenge', as: :enroll_challenge
  # root to:"login#index"
  resources :challenge_personals, only: %i[index show new]
end
