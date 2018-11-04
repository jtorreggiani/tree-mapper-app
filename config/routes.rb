Rails.application.routes.draw do
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

  get 'users', to: 'users/list#index', as: 'users_list'

  get 'search', to: 'search#index'

  get '/:username', to: 'users/profile#show', as: 'profile'

  root 'welcome#index'
end
