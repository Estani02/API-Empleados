Rails.application.routes.draw do
  resources :trainings
  resources :employment_histories
  resources :employees
  resources :positions
  resources :departments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
