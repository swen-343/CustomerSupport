Rails.application.routes.draw do

    namespace :api do
        namespace :v1 do
            resources :ticket, only: [:index, :create, :show, :update, :destroy]
            resources :labels
        end
    end

end
