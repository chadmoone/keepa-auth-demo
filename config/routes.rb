Rails.application.routes.draw do
  devise_for :users
  resources :items

  use_doorkeeper
  # use_doorkeeper do
  #   skip_controllers :authorizations, :applications,
  #     :authorized_applications
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users, only: [:new, :create]

  # root to: 'items#index' to config/routes.rb

  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: :logout

  root to: 'pages#index'

end
