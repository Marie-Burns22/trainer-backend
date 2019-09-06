class ApplicationController < ActionController::API

        def current_client
            Client.find(session[:client_id])
        end

        def logged_in?
            !!current_client
        end

end
