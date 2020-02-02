Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'app', to: 'app/app#home'

  root 'pages#home'
end
