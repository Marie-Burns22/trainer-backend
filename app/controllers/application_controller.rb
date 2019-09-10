require 'pry'
class ApplicationController < ActionController::API

        def current_client
           @current_client ||= Client.find_by(id: session[:client_id])
        end

        def logged_in?
            !!current_client
        end

end
