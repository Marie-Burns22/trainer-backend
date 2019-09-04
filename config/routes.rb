Rails.application.routes.draw do

    get "/api/v1/login", to: "sessions#create"
  
  # API namespacing shoud eventually match Aileen's purchased domain??  
  namespace :api do
    namespace :v1 do
      resources :clients
      resources :services
      resources :bookings
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
