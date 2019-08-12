Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :charities
      resources :donations

      post '/signup', to: 'users#create'
      post '/login', to: 'auth#login'
      get '/profile', to: 'users#profile'
      get '/fetchCharities', to: 'charities#create'
    end
  end
end
