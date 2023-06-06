Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :trainings
      resources :employment_histories
      resources :employees
      resources :positions
      resources :departments
    end
    namespace :v2 do
      resources :employment_histories
      resources :employees
    end
  end
end
