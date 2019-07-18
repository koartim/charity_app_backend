Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :new, :index, :update]
      resources :charities
      resources :donations
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/fetchCharities', to: 'charities#create'
    end
  end
end
