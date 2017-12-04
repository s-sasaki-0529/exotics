Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/auth/:provider/callback' => 'sessions#create'
end
