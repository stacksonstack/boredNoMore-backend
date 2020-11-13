Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      resources :users
      resources :activities
      resources :user_activities
      # delete "sessions", to: "sessions#destroy"
      # get "signup", to: "users#new", as: "signup"
      # get "login", to: "sessions#new", as: "login"
      # post "sessions", to: "sessions#create", as: "sessions"
      resources :sessions
    end
  end
end
