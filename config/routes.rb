Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  post '/login', to: 'home#login'
  post '/logout', to: 'home#logout'
  resources :questions
  resources :votes, only: [:create]
  resources :question_comments
  root to: "home#show"
end
