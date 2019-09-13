Rails.application.routes.draw do

  post '/api/v1/login', to: 'api/v1/sessions#create'
  delete '/api/v1/logout', to: 'api/v1/sessions#destroy'
  get '/api/v1/get_current_client', to: 'api/v1/sessions#get_current_client'
  post '/api/v1/signup', to: 'api/v1/clients#create'
   
  # API namespacing shoud eventually match Aileen's purchased domain??  
  namespace :api do
    namespace :v1 do
      resources :services
      resources :clients do
        resources :bookings
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
