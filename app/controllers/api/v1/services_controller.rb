class Api::V1::ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :destroy]

  # GET /services
  def index
    @services = Service.all
    render json: ServiceSerializer.new(@services).serialized_json
  end

  # GET /services/1
  def show
   render json: ServiceSerializer.new(@service).serialized_json
  end

  # POST /services
  def create
    @service = Service.new(service_params)
    if @service.save

      render json: ServiceSerializer.new(@service).serialized_json
    else
      render json: {error: "Error creating service"}
    end
  end

  # PATCH/PUT /services/1
  # def update
  #   if @service.update(service_params)
  #     render json: @service
  #   else
  #     render json: @service.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /services/1
  def destroy

    # @service.bookings.each do |booking|
    #   booking.destroy
    # end

    @service.destroy
    @services = Service.all
    render json: ServiceSerializer.new(@services).serialized_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      params.require(:service).permit(:name, :category, :price)
    end
end
