Diplomacy::Application.routes.draw do
  use_doorkeeper
  namespace :api do
    resources :games do
      resources :players
      resources :commands
    end
  end

  # Authentication routes
  get 'auth/:provider/callback', to: 'sessions#create'
  post 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy'

  resource :registration

  root to: 'home#index'
end
