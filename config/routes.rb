Rails.application.routes.draw do
  # Resources for user records controller by devise
  devise_for :users,
             controllers: {
               registrations: 'users/registrations',
               sessions: 'users/sessions'
             },
             path: '',
             path_names: {
               sign_up: 'sign_up',
               sign_in: 'sign_in',
               sign_out: 'sign out'
             }

  resources :posts
  resources :trees

  # Route for the user lists page
  get 'users', to: 'users/list#index', as: 'users_list'

  get 'search', to: 'search#index'

  get 'camera', to: 'camera#index'

  # Route for a user's profile
  get '/:username', to: 'users/profile#show', as: 'profile'

  # Route for the root path of the application
  root 'trees#index'
end
