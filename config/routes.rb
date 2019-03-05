Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # 管理系
  namespace :admin do
    resources :users
    # get 'users/new'
    # get 'users/edit'
    # get 'users/show'
    # get 'users/index'
  end

  root to: 'tasks#index'

  resources :tasks

  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
