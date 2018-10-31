Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'users', to: 'users/list#index', as: 'users_list'

  get 'search', to: 'search#index'

  get '/:username', to: 'users/profile#show', as: 'profile'

  root 'welcome#index'
end
