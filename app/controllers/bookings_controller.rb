class BookingsController < ApplicationController
    def create
    @booking = Boooking.new(booking_params)
    @sozee = Sozee.find(params[:sozee_id])
    @booking.sozee = @sozee
      if @booking.save
        redirect_to sozee_path(@sozee)
      else
        render 'sozee/show'
      end
    end

    def index
    @booking = Booking.all
    end

  private

  def booking_params
    params.require(:booking).permit(:sozee_id, :user_id, :location, :status)
  end
end
