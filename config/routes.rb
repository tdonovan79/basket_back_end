Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  post '/charge_adapter', to: 'charge_adapter#create'
  resources :employees
end
