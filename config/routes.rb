Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/auth/:provider/callback' => 'sessions#create'

  # API
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :show] do
      resources :pets, only: [:index, :show]
    end
  end
end
