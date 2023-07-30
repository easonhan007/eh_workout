Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource :cardio_records, only: %w[create destroy]
  resource :strength_records, only: %w[create destroy]
  resource :duration_records, only: %w[create destroy]
  resource :reps_only_records, only: %w[create destroy]
  
  resources :events
  resources :templates
  resources :exercises
  resources :categories
  devise_for :users

  get '/home/workout/:template_id', to: 'home#workout', as: 'workout'

  # Defines the root path route ("/")
  root "home#index"
end
