Rails.application.routes.draw do

    namespace :api do
        namespace :v1 do
			get '/ticket/:ticketNum/phones', to: 'ticket#get_phones_from_ticket', format: false
			post '/ticket/:ticketNum/:status', to: 'ticket#update_ticket_status', format: false

            resources :ticket, param: :ticketNum, only: [:index, :create, :show, :update]
            resources :label, only: [:index, :show, :create]
        end
    end
end
