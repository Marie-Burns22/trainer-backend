class Api::V1::SessionsController < ApplicationController
    def create
        @client = Client.find_by(email: params[:session][:email])

        if @client && @client.authenticate(params[:session][:password])
            session[:client_id] = @client.id 
            render json: @client 
        else 
            render json: {
                error: "Invalid Login Information"
            } 
        end
    end

    def destroy
    end
end
