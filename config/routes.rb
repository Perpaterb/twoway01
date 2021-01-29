Rails.application.routes.draw do
  get 'index', to: 'twoway#index', as: 'index'
  get 'login', to: 'twoway#login', as: 'login'
  get 'register', to: 'twoway#register', as: 'register'
  get 'admin', to: 'twoway#admin', as: 'admin'
  get "/delete_user/:id", to: "twoway#delete_user", as: "delete_user"
  get 'user_login_attempt', to: 'twoway#user_login_attempt', as: 'user_login_attempt'
  get 'no_access', to: 'twoway#no_access', as: 'no_access'

  post "/register", to: "twoway#user_create", as:"user_create"
  #delete "/delete_user/:id", to: "twoway#delete_user", as: "delete_user"

  root :to => 'twoway#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
