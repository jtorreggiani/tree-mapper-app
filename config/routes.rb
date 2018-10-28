Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'search', to: 'search#index'
  get '/:username', to: 'users/profile#show'
  root 'welcome#index'
end
