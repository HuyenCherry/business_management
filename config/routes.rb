Rails.application.routes.draw do
  root to: "users/sessions#index"
  namespace :users do
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end
end
