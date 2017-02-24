Rails.application.routes.draw do
  resources :questions
  root to: "questions#index"
end
