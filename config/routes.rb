Rails.application.routes.draw do
  get 'twoway/index'

  root :to => 'twoway#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
