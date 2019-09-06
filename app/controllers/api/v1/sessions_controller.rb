class Api::V1::SessionsController < ApplicationController
    def create
        # @client = Client.find_by(email: params[:client][:email])

        # if @client && @client.authenticate(params[:client][:password])
        #     session[:client_id] = @client.id 
        #     render json: @client 
        # else 
        #     render json: {
        #         error: "Invalid Credentials"
        #     }, state: unauthorized 
        # end
    end

    def destroy
        # session.clear
        # render json: {
        #     message: "Logged out"
        # }
    end
end
