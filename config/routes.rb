Rails.application.routes.draw do

  resources :tickets
  resources :customers
  get '/tickets/new/:customer_id', to: 'tickets#new', as: 'new_ticket_customer'

end
