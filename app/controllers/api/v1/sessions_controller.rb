class Api::V1::SessionsController < ApplicationController

    def create
        @client = Client.find_by(email: params[:session][:email])
        if @client && @client.authenticate(params[:session][:password])

            session[:client_id] = @client.id
            render json: ClientSerializer.new(@client).serialized_json 
        else
            render json: {
                error: "Invalid Credentials"
            }
        end
    end

    def get_current_client
        if logged_in?
            render json: ClientSerializer.new(current_client).serialized_json 
        else
            render json: {
                error: "No one logged in"
            }
        end
    end

    def destroy
        session.clear
        render json: {
            notice: "successfully logged out"
        }
    end
end
