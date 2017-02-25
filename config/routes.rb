Rails.application.routes.draw do
  post '/login', to: 'home#login'
  post '/logout', to: 'home#logout'
  resources :questions
  resources :votes, only: [:create]
  root to: "home#show"
end
