Rails.application.routes.draw do
  
  resources :posts
  resources :attendees
  resources :categories
  resources :events
  resources :users, except: [:edit, :update]
  resources :locations

  # patch "/sessions/reset", to: "sessions#reset"
  root 'sessions#new'
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/users/:id/settings", to: "users#edit", as: "user_settings"
  patch "/users/:id", to: "users#update"
  
  get "/search", to: "sessions#show", as: "search"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
