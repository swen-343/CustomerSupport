Rails.application.routes.draw do

  resources :labels
  resources :tickets
  resources :customers
  get '/tickets/new/:customer_id', to: 'tickets#new', as: 'new_ticket_customer'
  get '/labels/new/:ticket_id', to: 'labels#new', as: 'new_ticket_label'

end
