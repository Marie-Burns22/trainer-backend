class Api::V1::SessionsController < ApplicationController

    def create
        @client = Client.find_by(email: params[:session][:email])
        if @client && @client.authenticate(params[:session][:password])
            session[:client_id] = @client.client_id
            render json: @client 
        else
            render json: {
                error: "Invalid Credentials"
            }
        end
    end

    def get_current_client
        if logged_in?
            render json: current_user 
        else
            render json: {
                error: "No one logged in"
            }
        end
    end
end
