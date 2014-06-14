Diplomacy::Application.routes.draw do
  resources :commands
  resources :units

  # Authentication routes
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy'

  resources :registrations

  root to: 'home#index'
end
