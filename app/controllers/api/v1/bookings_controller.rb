class Api::V1::BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]
  # before_action :set_client, only: [:show, :index, :update, :create, :destroy]
  # GET /bookings
  def index
    if logged_in?
      @bookings = current_client.bookings
      render json: BookingSerializer.new(@bookings)
    else
      render json: {
        error: "You must be logged in to view bookings"
      }
    end
  end

  # POST /bookings
  def create
    @client = current_client
    @booking = @client.bookings.new(booking_params)

    if @client.save
      @bookings = current_client.bookings
      render json: BookingSerializer.new(@bookings)
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  # def update
  #   if @booking.update(booking_params)
  #     render json: @booking
  #   else
  #     render json: @booking.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
    @bookings = current_client.bookings
    render json: BookingSerializer.new(@bookings)
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def booking_params
      params.require(:booking).permit(:day, :time, :client_id, :service_id)
    end

    # def set_client
    #   @client = Client.find(params[:client_id])
    # end
end
