Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :trainings
      resources :employment_histories
      resources :employees
      resources :positions
      resources :departments
    end
  end
end
