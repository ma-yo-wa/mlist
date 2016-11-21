Rails.application.routes.draw do

  resources :users, only: :create
  post '/auth/login'   => 'auth#login'
  get '/auth/logout'   => 'auth#logout'

  namespace :api do
    namespace :v1 do
      resources :bucketlists
    end
  end
end