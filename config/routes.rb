Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  get '/users/sign_in', to: "devise/sessions#new"
  get '/users/sign_up', to: "devise/registrations#new"

  resources :prototypes do
    resources :comments
  end
  post '/prototypes/new', to: "prototypes#create"
  post '/prototypes/:id/edit(prototype.id)', to: "prototypes#update"

  resources :users
end
