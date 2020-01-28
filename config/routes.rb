Rails.application.routes.draw do
  devise_for :users
  get 'app', to: 'app/app#home'

  root 'pages#home'
end
