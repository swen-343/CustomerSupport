Rails.application.routes.draw do

  get    'login'   => 'logins#new'
  post   'login'   => 'logins#create'
  delete 'logout'  => 'logins#destroy'

  root :to => 'tickets#index'

  resources :labels
  resources :tickets
  resources :customers
  resources :users

  get '/labels/new/:ticket_id', to: 'labels#new', as: 'new_ticket_label'
  get '/tickets/new/:customer_id', to: 'tickets#new', as: 'new_ticket_customer'
  get '/logins/new/', to: 'logins#new', as: 'new_login'

end
