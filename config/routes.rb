Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/auth/:provider/callback' => 'sessions#create'

  # API
  namespace :api, defaults: { format: :json } do
    resources :user, only: [:index]
  end
end
