Rails.application.routes.draw do
  get 'app', to: 'app/app#home'

  root 'pages#home'
end
