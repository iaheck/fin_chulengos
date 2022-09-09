Rails.application.routes.draw do
  get 'login/index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :resources
  # Defines the root path route ("/")
  # root "articles#index"
  resources :roadmaps, only: [:show] do
    resources :checkpoints, only: [:index]
  end

  resources :checkpoints, only: %i[index show new create]
  # get 'roadmap/enroll' => 'roadmaps#enroll', as: :enroll
  post 'roadmaps/enroll' => 'roadmaps#enroll', as: :enroll
  get 'checkpoints/:id/resource' => 'resources#index', as: :checkpoint_resource
  get 'roadmaps/:id' => 'roadmaps#show', as: :road
  root 'roadmaps#index'
  # root to:"login#index"
  resources :challenge_personals, only: %i[index show new create]
end
