Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :cardio_records
  resources :strength_records
  resources :duration_records
  resources :reps_only_records
  
  resources :events
  resources :templates
  resources :exercises
  resources :categories
  devise_for :users

  get '/home/workout/:template_id', to: 'home#workout', as: 'workout'

  # Defines the root path route ("/")
  root "home#index"
end
