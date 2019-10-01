Rails.application.routes.draw do
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
