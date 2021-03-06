Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  post '/charge_adapter', to: 'charge_adapter#create'
  resources :employees
  post '/get_checks', to: 'checks#get_checks'
  resources :checks
  resources :products
  resources :sales
  resources :payments
  post '/delete_from_check', to: 'sales#delete_from_check'
  post '/reopen_check', to: 'payments#reopen_check'
end
