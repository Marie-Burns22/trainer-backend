class Api::V1::ClientsController < ApplicationController
  before_action :set_client, only: [:show, :update, :destroy]

  # GET /clients
  def index
    @clients = Client.all
    render json: ClientSerializer.new(@clients).serialized_json
  end

  # GET /clients/1
  def show
    render json: ClientSerializer.new(@client).serialized_json
  end

  # POST /clients
  def create
    @client = Client.new(client_params)

    if @client.save
      session[:client_id] = @client.id
      render json: ClientSerializer.new(@client)
    else
      resp = {
        error: @client.errors.full_messages.to_sentence
      }
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clients/1
  # def update
  #   if @client.update(client_params)
  #     render json: @client
  #   else
  #     render json: @client.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /clients/1
  # def destroy
  #   @client.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_params
      params.require(:client).permit(:name, :email, :password) #changed password_diget to password, but not sure if that is correct
    end
end
