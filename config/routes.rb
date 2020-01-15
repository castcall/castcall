Rails.application.routes.draw do
  constraints (RouteConstraints::AppSubdomain) do
    root 'app/app#home', as: :app_root
  end

  root 'pages#home'
end
