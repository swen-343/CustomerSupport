Rails.application.routes.draw do

  get    'login'   => 'logins#new'
  post   'login'   => 'logins#create'
  delete 'logout'  => 'logins#destroy'

  root :to => 'tickets#index'

  resources :users
  resources :tickets
  resources :customers
  get '/tickets/new/:customer_id', to: 'tickets#new', as: 'new_ticket_customer'
  get '/logins/new/', to: 'logins#new', as: 'new_login'


end
