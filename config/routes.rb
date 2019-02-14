Rails.application.routes.draw do
  resources :trees

  # Route for the root path of the application
  root 'trees#index'
end
